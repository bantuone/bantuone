import 'package:bantuone/core/widgets/appbar.widget.dart';
import 'package:bantuone/features/order/order_binding.dart';
import 'package:bantuone/features/order/order_screen.dart';
import 'package:bantuone/features/pick_destination/pick_destination_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickDestinationScreen extends GetView<PickDestinationController> {
  PickDestinationScreen({super.key});

  final args = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final position = args['position'];
    final type = args['type'];

    controller.getAllDestinations(type);

    return Scaffold(
      appBar: CustomAppBar.standardAppBar('Pilih Tujuan'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(
          () => ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            itemCount: controller.destinations.length,
            itemBuilder: (context, index) {
              final destination = controller.destinations[index];

              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () => controller.order(position, destination),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${destination['name']}'),
                        const SizedBox(height: 8),
                        Text('Address: ${destination['address']}'),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
