import 'controller/delivery_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_ari_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_ari_s_application4/widgets/custom_icon_button.dart';
import 'package:the_ari_s_application4/widgets/custom_pin_code_text_field.dart';

class DeliveryScreen extends GetWidget<DeliveryController> {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgDelivery),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 58.v),
                          Container(
                              height: 142.v,
                              width: 186.h,
                              margin: EdgeInsets.only(left: 66.h),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLinkedin,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(top: 42.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector2,
                                        height: 142.v,
                                        width: 170.h,
                                        alignment: Alignment.centerRight)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(right: 106.h),
                              child: CustomIconButton(
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineGrayFTL18,
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgIconBike))),
                          Spacer(),
                          _buildDeliveryOne()
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 74.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 30.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 6.v))
        ]);
  }

  /// Section Widget
  Widget _buildDeliveryOne() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
        decoration: AppDecoration.outlineGrayF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 5.v,
              width: 44.h,
              decoration: BoxDecoration(
                  color: appTheme.gray200,
                  borderRadius: BorderRadius.circular(2.h))),
          SizedBox(height: 14.v),
          Text("lbl_10_minutes_left".tr,
              style: CustomTextStyles.titleMediumBluegray90003),
          SizedBox(height: 7.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_delivery_to".tr,
                    style: theme.textTheme.bodySmall),
                TextSpan(
                    text: "lbl_jl_kpg_sutoyo".tr,
                    style: theme.textTheme.labelLarge)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 18.v),
          Obx(() => CustomPinCodeTextField(
              context: Get.context!,
              controller: controller.otpController.value,
              onChanged: (value) {})),
          SizedBox(height: 26.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 35.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: CustomIconButton(
                            height: 62.adaptSize,
                            width: 62.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.outlineGrayTL12,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIconBikePrimary))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_delivered_your_order".tr,
                                      style: CustomTextStyles
                                          .titleSmallBluegray90003),
                                  SizedBox(height: 7.v),
                                  SizedBox(
                                      width: 190.h,
                                      child: Text("msg_we_deliver_your".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(height: 1.54)))
                                ])))
                  ]))),
          SizedBox(height: 32.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 54.adaptSize,
                width: 54.adaptSize,
                radius: BorderRadius.circular(14.h)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 6.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_johan_hawn".tr,
                          style: CustomTextStyles.titleSmallBluegray90003),
                      SizedBox(height: 7.v),
                      Text("msg_personal_courier".tr,
                          style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            CustomIconButton(
                height: 54.adaptSize,
                width: 54.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.outlineGrayTL14,
                child: CustomImageView(imagePath: ImageConstant.imgCall))
          ]),
          SizedBox(height: 40.v)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
