import 'package:bantuone/features/order/order_binding.dart';
import 'package:bantuone/features/order/order_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickDestinationController extends GetxController {
  final destinations = <Map<String, dynamic>>[].obs;

  getAllDestinations(Position userPosition, String type) {
    destinations.clear();

    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('services')
        .where('type', isEqualTo: type)
        .get()
        .then((value) {
      for (var element in value.docChanges) {
        final data = element.doc.data();
        final latLng = data!['lat/lng'].toString().split('/');
        final lat = double.parse(latLng.first.toString());
        final lng = double.parse(latLng.last.toString());

        final distance = Geolocator.distanceBetween(
          userPosition.latitude,
          userPosition.longitude,
          lat,
          lng,
        );

        data['id'] = element.doc.id;
        data['distance'] = distance;

        destinations.add(data);
      }
      destinations.sort(
        (a, b) {
          double distanceA = a['distance'];
          double distanceB = b['distance'];

          return distanceA.compareTo(distanceB);
        },
      );
    }).catchError((e) {
      e as FirebaseException;

      Get.back();
      Get.snackbar('Error', e.message.toString());
    });
  }
  // getAllDestinations(String type) {
  //   destinations.clear();

  //   final firestore = FirebaseFirestore.instance;
  //   firestore
  //       .collection('services')
  //       .where('type', isEqualTo: type)
  //       .get()
  //       .then((value) {
  //     for (var element in value.docChanges) {
  //       final data = element.doc.data();
  //       data!['id'] = element.doc.id;

  //       destinations.add(data);
  //     }
  //   }).catchError((e) {
  //     e as FirebaseException;

  //     Get.back();
  //     Get.snackbar('Error', e.message.toString());
  //   });
  // }

  order(Position position, Map<String, dynamic> destination) {
    final auth = FirebaseAuth.instance;
    final userId = auth.currentUser!.uid;
    final userPhone = auth.currentUser!.phoneNumber;
    final userName = auth.currentUser!.displayName;

    final firestore = FirebaseFirestore.instance;
    final latLng = destination['lat/lng'].toString().split('/');
    final body = {
      'userId': userId,
      'userLat': position.latitude,
      'userLng': position.longitude,
      'userPhone': userPhone,
      'destinationId': destination['id'],
      'destinationName': destination['name'],
      'destinationAddress': destination['address'],
      'destinationPhone': destination['phone'],
      'destinationLat': double.parse(latLng.first),
      'destinationLng': double.parse(latLng.last),
      'step': 1,
      'createdAt': DateTime.now().millisecondsSinceEpoch,
      'userName': userName
    };

    firestore
        .collection('orders')
        .add(body)
        .then(
          (value) => Get.to(() => const OrderScreen(),
              binding: OrderBinding(), arguments: value.id),
        )
        .catchError((e) {
      e as FirebaseException;
      Get.snackbar('Error', e.message.toString()).show();
    });
  }
}
