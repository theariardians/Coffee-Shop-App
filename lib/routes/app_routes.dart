import 'package:the_ari_s_application4/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:the_ari_s_application4/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:the_ari_s_application4/presentation/home_container_screen/home_container_screen.dart';
import 'package:the_ari_s_application4/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:the_ari_s_application4/presentation/detail_item_screen/detail_item_screen.dart';
import 'package:the_ari_s_application4/presentation/detail_item_screen/binding/detail_item_binding.dart';
import 'package:the_ari_s_application4/presentation/order_screen/order_screen.dart';
import 'package:the_ari_s_application4/presentation/order_screen/binding/order_binding.dart';
import 'package:the_ari_s_application4/presentation/delivery_screen/delivery_screen.dart';
import 'package:the_ari_s_application4/presentation/delivery_screen/binding/delivery_binding.dart';
import 'package:the_ari_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:the_ari_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String detailItemScreen = '/detail_item_screen';

  static const String orderScreen = '/order_screen';

  static const String deliveryScreen = '/delivery_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: detailItemScreen,
      page: () => DetailItemScreen(),
      bindings: [
        DetailItemBinding(),
      ],
    ),
    GetPage(
      name: orderScreen,
      page: () => OrderScreen(),
      bindings: [
        OrderBinding(),
      ],
    ),
    GetPage(
      name: deliveryScreen,
      page: () => DeliveryScreen(),
      bindings: [
        DeliveryBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    )
  ];
}
