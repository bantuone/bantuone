import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/features/pick_destination/pick_destination_binding.dart';
import 'package:bantuone/features/pick_destination/pick_destination_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class currLoct extends StatefulWidget {
  final String type;

  const currLoct({Key? key, required this.type}) : super(key: key);

  @override
  _currLoct createState() => _currLoct();
}

class _currLoct extends State<currLoct> {
  late GoogleMapController googleMapController;

  Position? position;

  static const CameraPosition initialCameraPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);

  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lokasi Sekarang",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: white)),
        centerTitle: true,
        backgroundColor: darkBlue,
      ),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: initialCameraPosition,
              markers: markers,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) async {
                googleMapController = controller;
                position = await _determinePosition();

                googleMapController.animateCamera(
                    CameraUpdate.newCameraPosition(CameraPosition(
                        target: LatLng(position!.latitude, position!.longitude),
                        zoom: 14)));

                markers.clear();

                markers.add(Marker(
                    markerId: const MarkerId('currentLocation'),
                    position: LatLng(position!.latitude, position!.longitude)));

                setState(() {});
              },
            ),
          ),
          Visibility(
            visible: position != null,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: green
                ),
                onPressed: () => Get.to(() => PickDestinationScreen(),
                    arguments: {'position': position, 'type': widget.type},
                    binding: PickDestinationBinding()),
                child: const Text('Pilih lokasi tujuan'),
              ),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () async {
      //     Position position = await _determinePosition();

      //     googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      //         CameraPosition(
      //             target: LatLng(position.latitude, position.longitude),
      //             zoom: 14)));

      //     markers.clear();

      //     markers.add(Marker(
      //         markerId: const MarkerId('currentLocation'),
      //         position: LatLng(position.latitude, position.longitude)));

      //     setState(() {});
      //   },
      //   label: const Text("Lokasi"),
      //   icon: const Icon(Icons.gps_fixed),
      // ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}
