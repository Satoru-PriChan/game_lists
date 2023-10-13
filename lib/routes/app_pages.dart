import 'package:get/get_navigation/src/routes/get_route.dart';

import '../UI/home/home_binding.dart';
import '../UI/home/presentation/home.dart';
import 'app_routes.dart';

class AppPages {
    static var list = [
        GetPage(
            name: AppRoutes.Home,
            page: () => Home(),
            binding: HomeBinding(),
        )
    ];
}