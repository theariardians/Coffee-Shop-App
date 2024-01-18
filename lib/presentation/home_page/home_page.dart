import '../home_page/widgets/homelist_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/homelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:the_ari_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_ari_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_ari_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_ari_s_application4/widgets/custom_icon_button.dart';
import 'package:the_ari_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Column(
              children: [
                _buildMainStack(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24.v),
                  child: Column(
                    children: [
                      _buildHomeList(),
                      SizedBox(height: 24.v),
                      _buildFortySeven(),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchEditText() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: CustomTextFormField(
            controller: controller.searchEditTextController,
            hintText: "lbl_search_coffee".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 12.h, 16.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 52.v),
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFurnituricon,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 52.v)));
  }

  /// Section Widget
  Widget _buildPromoButton() {
    return CustomElevatedButton(
        height: 26.v,
        width: 60.h,
        text: "lbl_promo".tr,
        buttonStyle: CustomButtonStyles.fillRed,
        buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer);
  }

  /// Section Widget
  Widget _buildMainStack() {
    return SizedBox(
        height: 344.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 60.v),
                  decoration: AppDecoration.gradientOnPrimaryToBlueGray,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        height: 44.v,
                        title: Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Column(children: [
                              AppbarSubtitle(
                                  text: "lbl_location".tr,
                                  margin: EdgeInsets.only(right: 108.h)),
                              SizedBox(height: 4.v),
                              Obx(() => AppbarTitleDropdown(
                                  hintText: "msg_bilzen_tanjungbalai".tr,
                                  items: controller.homeModelObj.value
                                      .dropdownItemList.value,
                                  onTap: (value) {
                                    controller.onSelected(value);
                                  }))
                            ])),
                        actions: [
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgPlay,
                              margin: EdgeInsets.symmetric(horizontal: 30.h))
                        ]),
                    SizedBox(height: 24.v),
                    _buildSearchEditText(),
                    SizedBox(height: 40.v)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.gray20001,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Container(
                      height: 140.v,
                      width: 315.h,
                      decoration: AppDecoration.fillGray20001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage8,
                            height: 140.v,
                            width: 315.h,
                            radius: BorderRadius.circular(16.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 23.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildPromoButton(),
                                      SizedBox(height: 7.v),
                                      SizedBox(
                                          height: 80.v,
                                          width: 200.h,
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: 27.v,
                                                        width: 200.h,
                                                        margin: EdgeInsets.only(
                                                            top: 15.v),
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onSecondaryContainer))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height: 23.v,
                                                        width: 149.h,
                                                        margin: EdgeInsets.only(
                                                            bottom: 2.v),
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onSecondaryContainer))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        width: 192.h,
                                                        child: Text(
                                                            "msg_buy_one_get_one"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: theme
                                                                .textTheme
                                                                .headlineLarge)))
                                              ]))
                                    ])))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildHomeList() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 38.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 30.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8.h);
                },
                itemCount:
                    controller.homeModelObj.value.homelistItemList.value.length,
                itemBuilder: (context, index) {
                  HomelistItemModel model = controller
                      .homeModelObj.value.homelistItemList.value[index];
                  return HomelistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildTenStack() {
    return CustomElevatedButton(
        height: 25.v,
        width: 51.h,
        text: "lbl_4_8".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 2.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 10.adaptSize,
                width: 10.adaptSize)),
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.labelMedium!,
        alignment: Alignment.topLeft);
  }

  /// Section Widget
  Widget _buildElevenStack() {
    return CustomElevatedButton(
        height: 25.v,
        width: 51.h,
        text: "lbl_4_9".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 2.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 10.adaptSize,
                width: 10.adaptSize)),
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.labelMedium!,
        alignment: Alignment.topLeft);
  }

  /// Section Widget
  Widget _buildFortySeven() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(4.h),
              decoration: AppDecoration.fillOnErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 132.v,
                        width: 141.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1706,
                              height: 132.v,
                              width: 141.h,
                              radius: BorderRadius.circular(16.h),
                              alignment: Alignment.center),
                          _buildTenStack()
                        ])),
                    SizedBox(height: 12.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_cappucino".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_with_chocolate".tr,
                            style: CustomTextStyles.bodySmallGray500)),
                    SizedBox(height: 7.v),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 125.h,
                            margin: EdgeInsets.symmetric(horizontal: 8.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      child: Text("lbl_4_53".tr,
                                          style: CustomTextStyles
                                              .titleMediumErrorContainer)),
                                  CustomIconButton(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      onTap: () {
                                        navigateToDetail();
                                      },
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPlus))
                                ]))),
                    SizedBox(height: 7.v)
                  ])),
          Container(
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.all(4.h),
              decoration: AppDecoration.fillOnErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 132.v,
                        width: 142.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1707,
                              height: 132.v,
                              width: 142.h,
                              radius: BorderRadius.circular(16.h),
                              alignment: Alignment.center),
                          _buildElevenStack()
                        ])),
                    SizedBox(height: 12.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_cappucino".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_with_oat_milk".tr,
                            style: CustomTextStyles.bodySmallGray500)),
                    SizedBox(height: 7.v),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 124.h,
                            margin: EdgeInsets.symmetric(horizontal: 8.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      child: Text("lbl_3_90".tr,
                                          style: CustomTextStyles
                                              .titleMediumErrorContainer)),
                                  CustomIconButton(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      onTap: () {
                                        navigateToDetail1();
                                      },
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPlus))
                                ]))),
                    SizedBox(height: 7.v)
                  ]))
        ]));
  }

  /// Navigates to the detailItemScreen when the action is triggered.
  navigateToDetail() {
    Get.toNamed(
      AppRoutes.detailItemScreen,
    );
  }

  /// Navigates to the detailItemScreen when the action is triggered.
  navigateToDetail1() {
    Get.toNamed(
      AppRoutes.detailItemScreen,
    );
  }
}
