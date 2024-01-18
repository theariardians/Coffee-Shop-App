import 'controller/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:the_ari_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_ari_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_ari_s_application4/widgets/custom_icon_button.dart';
import 'package:the_ari_s_application4/widgets/custom_outlined_button.dart';

class OrderScreen extends GetWidget<OrderController> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildFrameTwentySeven(),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("msg_delivery_address".tr,
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 16.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("lbl_jl_kpg_sutoyo".tr,
                              style:
                                  CustomTextStyles.titleSmallBluegray90003))),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("msg_kpg_sutoyo_no".tr,
                              style: theme.textTheme.bodySmall))),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Row(children: [
                            _buildEditAddressButton(),
                            _buildAddNoteButton()
                          ]))),
                  SizedBox(height: 20.v),
                  Divider(indent: 30.h, endIndent: 30.h),
                  SizedBox(height: 19.v),
                  _buildFrame(),
                  SizedBox(height: 20.v),
                  Divider(color: appTheme.gray100),
                  SizedBox(height: 19.v),
                  _buildDiscountAppliedRow(),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("lbl_payment_summary".tr,
                              style:
                                  CustomTextStyles.titleMediumBluegray90001))),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: _buildTotalPaymentRow(
                          totalPaymentText: "lbl_price".tr,
                          priceText: "lbl_4_53".tr)),
                  SizedBox(height: 16.v),
                  _buildDeliveryFeeRow(),
                  SizedBox(height: 14.v),
                  Divider(indent: 30.h, endIndent: 30.h),
                  SizedBox(height: 15.v),
                  _buildThirtySeven()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_order".tr));
  }

  /// Section Widget
  Widget _buildDeliverButton() {
    return CustomElevatedButton(
        height: 40.v,
        width: 153.h,
        text: "lbl_deliver".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL10);
  }

  /// Section Widget
  Widget _buildPickUpButton() {
    return CustomElevatedButton(
        height: 40.v,
        width: 153.h,
        text: "lbl_pick_up".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildFrameTwentySeven() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.all(4.h),
        decoration: AppDecoration.fillGray10002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [_buildDeliverButton(), _buildPickUpButton()]));
  }

  /// Section Widget
  Widget _buildEditAddressButton() {
    return CustomOutlinedButton(
        width: 120.h,
        text: "lbl_edit_address".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 14.adaptSize,
                width: 14.adaptSize)));
  }

  /// Section Widget
  Widget _buildAddNoteButton() {
    return CustomOutlinedButton(
        width: 101.h,
        text: "lbl_add_note".tr,
        margin: EdgeInsets.only(left: 8.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
                height: 14.adaptSize,
                width: 14.adaptSize)));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle170654x54,
              height: 54.adaptSize,
              width: 54.adaptSize,
              radius: BorderRadius.circular(12.h)),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 7.v),
              child: Column(children: [
                Text("lbl_cappucino".tr, style: theme.textTheme.titleMedium),
                SizedBox(height: 2.v),
                Text("lbl_with_chocolate".tr,
                    style: CustomTextStyles.bodySmallGray500)
              ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 13.v),
              child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlineGray,
                  child: CustomImageView(imagePath: ImageConstant.imgUpload))),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 17.v, bottom: 18.v),
              child: Text("lbl_1".tr,
                  style: CustomTextStyles.titleSmallBluegray90002)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 13.v, bottom: 13.v),
              child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlineGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPlusBlueGray90002)))
        ]));
  }

  /// Section Widget
  Widget _buildDiscountAppliedButton() {
    return CustomElevatedButton(
        height: 24.v,
        width: 184.h,
        text: "msg_1_discount_is_applied".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.fillOnErrorContainer,
        buttonTextStyle: theme.textTheme.titleSmall!);
  }

  /// Section Widget
  Widget _buildDiscountAppliedRow() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 29.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildDiscountAppliedButton(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryFeeRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_delivery_fee".tr, style: theme.textTheme.bodyMedium),
          Spacer(),
          Text("lbl_2_0".tr,
              style: theme.textTheme.bodyMedium!
                  .copyWith(decoration: TextDecoration.lineThrough)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("lbl_1_0".tr, style: theme.textTheme.titleSmall))
        ]));
  }

  /// Section Widget
  Widget _buildCashButton() {
    return CustomElevatedButton(
        height: 24.v,
        width: 51.h,
        text: "lbl_cash".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer);
  }

  /// Section Widget
  Widget _buildOrderButton() {
    return CustomElevatedButton(
        text: "lbl_order".tr,
        onPressed: () {
          navigateToDelivery();
        });
  }

  /// Section Widget
  Widget _buildThirtySeven() {
    return SizedBox(
        height: 177.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Padding(
              padding: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 158.v),
              child: _buildTotalPaymentRow(
                  totalPaymentText: "lbl_total_payment".tr,
                  priceText: "lbl_5_53".tr)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 16.v),
                  decoration: AppDecoration.outlineGrayF.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder24),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Container(
                                  width: 112.h,
                                  margin: EdgeInsets.only(left: 12.h),
                                  decoration: AppDecoration.fillGray10001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Row(children: [
                                    _buildCashButton(),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 3.v, bottom: 4.v),
                                        child: Text("lbl_5_53".tr,
                                            style: CustomTextStyles
                                                .bodySmallBluegray90002))
                                  ])),
                              Spacer(),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconDots,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                    SizedBox(height: 16.v),
                    _buildOrderButton(),
                    SizedBox(height: 27.v)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildTotalPaymentRow({
    required String totalPaymentText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(totalPaymentText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.blueGray90001))),
      Text(priceText,
          style: theme.textTheme.titleSmall!
              .copyWith(color: appTheme.blueGray90001))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the deliveryScreen when the action is triggered.
  navigateToDelivery() {
    Get.toNamed(
      AppRoutes.deliveryScreen,
    );
  }
}
