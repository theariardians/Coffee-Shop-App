import '../controller/delivery_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryScreen.
///
/// This class ensures that the DeliveryController is created when the
/// DeliveryScreen is first loaded.
class DeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryController());
  }
}
