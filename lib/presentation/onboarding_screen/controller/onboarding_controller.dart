import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/presentation/onboarding_screen/models/onboarding_model.dart';

/// A controller class for the OnboardingScreen.
///
/// This class manages the state of the OnboardingScreen, including the
/// current onboardingModelObj
class OnboardingController extends GetxController {
  Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homeContainerScreen,
      );
    });
  }
}
