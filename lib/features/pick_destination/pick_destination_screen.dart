import 'package:bantuone/core/constants/colors.dart';
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

    controller.getAllDestinations(position, type);

    return Scaffold(
      appBar: CustomAppBar.standardAppBar('Pilih Bantuan'),
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
                        Text('${destination['name']}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: darkBlue),),
                        const SizedBox(height: 8),
                        Text('${destination['address']}', style: TextStyle(color: midBlue),),
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
