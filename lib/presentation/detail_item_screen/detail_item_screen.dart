import 'controller/detail_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_ari_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_ari_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_ari_s_application4/widgets/custom_icon_button.dart';

class DetailItemScreen extends GetWidget<DetailItemController> {
  const DetailItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 8.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1706,
                      height: 226.v,
                      width: 315.h,
                      radius: BorderRadius.circular(16.h)),
                  SizedBox(height: 20.v),
                  _buildDetailItemRow(),
                  SizedBox(height: 17.v),
                  Divider(),
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_description".tr,
                          style: CustomTextStyles.titleMediumBluegray90001)),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 305.h,
                          child: ReadMoreText("msg_a_cappuccino_is".tr,
                              trimLines: 3,
                              colorClickableText: theme.colorScheme.primary,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "lbl_read_more".tr,
                              moreStyle: CustomTextStyles.bodyMediumGray500
                                  .copyWith(height: 1.64),
                              lessStyle: CustomTextStyles.bodyMediumGray500
                                  .copyWith(height: 1.64)))),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_size".tr,
                          style: CustomTextStyles.titleMediumBluegray90001)),
                  SizedBox(height: 12.v),
                  _buildDetailItemSizeRow(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildDetailItemBuyNowColumn()));
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
        title: AppbarTitle(text: "lbl_detail".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFavorite,
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildDetailItemRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_cappucino".tr, style: theme.textTheme.titleLarge),
            SizedBox(height: 6.v),
            Text("lbl_with_chocolate".tr,
                style: CustomTextStyles.bodySmallGray500),
            SizedBox(height: 13.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_4_82".tr,
                            style: theme.textTheme.titleMedium),
                        TextSpan(
                            text: "lbl_230".tr,
                            style: theme.textTheme.bodySmall)
                      ]),
                      textAlign: TextAlign.left))
            ])
          ]),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 39.v, bottom: 2.v),
              child: CustomIconButton(
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgIconBean))),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 39.v, bottom: 2.v),
              child: CustomIconButton(
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(imagePath: ImageConstant.imgIconMilk)))
        ]);
  }

  /// Section Widget
  Widget _buildDetailItemSizeRow() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 96.h,
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Text("lbl_s".tr,
                  style: CustomTextStyles.bodyMediumBluegray90002)),
          Container(
              width: 96.h,
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child:
                  Text("lbl_m".tr, style: CustomTextStyles.bodyMediumPrimary)),
          Container(
              width: 96.h,
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Text("lbl_l".tr,
                  style: CustomTextStyles.bodyMediumBluegray90002))
        ]));
  }

  /// Section Widget
  Widget _buildDetailItemBuyNowColumn() {
    return Container(
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 43.v),
        decoration: AppDecoration.outlineGrayF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Container(
            decoration: AppDecoration.outlineGrayF
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.v),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_price".tr,
                                style: CustomTextStyles.bodyMediumGray500),
                            Padding(
                                padding: EdgeInsets.only(top: 8.v),
                                child: Text("lbl_4_53".tr,
                                    style: CustomTextStyles.titleMediumPrimary))
                          ])),
                  CustomElevatedButton(
                      width: 217.h,
                      text: "lbl_buy_now".tr,
                      onPressed: () {
                        navigateToOrder();
                      })
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the orderScreen when the action is triggered.
  navigateToOrder() {
    Get.toNamed(
      AppRoutes.orderScreen,
    );
  }
}
