import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/widgets/appbar.widget.dart';
import 'package:bantuone/features/history/history_controller.dart';
import 'package:bantuone/features/order/order_binding.dart';
import 'package:bantuone/features/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryScreen extends GetView<HistoryController> {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // controller.getHistories();
    return Scaffold(
      appBar: CustomAppBar.standardAppBar('Riwayat Pemesanan'),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Obx(
          () => controller.histories.isNotEmpty
              ? ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemCount: controller.histories.length,
                  itemBuilder: (context, index) {
                    final history = controller.histories[index];
                    return Card(
                      child: InkWell(
                        onTap: () => Get.to(() => const OrderScreen(),
                            binding: OrderBinding(), arguments: history['id']),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Row(
                                children: [
                                  Text(
                                      '${history['destinationName']}',style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              subtitle:
                                  Text('${history['destinationAddress']}'),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 12, 12),
                              child: Text(
                                history['step'] > -1
                                    ? controller.msgs[history['step'] - 1]
                                    : history['step'] == -1
                                        ? 'Canceled'
                                        : 'Rejected', style: TextStyle(fontWeight: FontWeight.bold, color: darkBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : const Center(
                  child: Text('Riwayat Pemesanan Kosong'),
                ),
        ),
      ),
    );
  }
}
