import 'package:games_list/UI/home/presentation/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController.Default(), permanent: true);
  }
}