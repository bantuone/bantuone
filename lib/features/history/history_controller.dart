import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HistoryController extends GetxController {
  final histories = <Map<String, dynamic>>[].obs;
  final msgs = [
    'Menunggu konfirmasi',
    'Pesanan diterima',
    'Menuju lokasi',
    'Sampai di lokasi anda',
    'Selesai'
  ];

  getHistories() {
    final auth = FirebaseAuth.instance;
    final userId = auth.currentUser!.uid;

    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('orders')
        .where('userId', isEqualTo: userId)
        .snapshots()
        .listen((value) async {
      histories.clear();

      for (var element in value.docChanges) {
        final data = element.doc.data();
        data!['id'] = element.doc.id;
        data['userAddress'] = await _parseLocation(
          data['userLat'],
          data['userLng'],
        );

        histories.add(data);
      }
    }).onError((e) {
      e as FirebaseException;
      Get.snackbar('Error', e.message.toString());
    });
  }

  _parseLocation(double lat, double lng) async {
    final address = await placemarkFromCoordinates(lat, lng);
    final place = address.first;

    return '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
  }

  @override
  void onInit() {
    getHistories();
    super.onInit();
  }
}
