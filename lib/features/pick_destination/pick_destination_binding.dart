import 'package:bantuone/features/pick_destination/pick_destination_controller.dart';
import 'package:get/get.dart';

class PickDestinationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PickDestinationController());
  }
}
