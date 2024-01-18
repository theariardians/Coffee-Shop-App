import '../controller/home_controller.dart';
import '../models/homelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_ari_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HomelistItemWidget extends StatelessWidget {
  HomelistItemWidget(
    this.homelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomelistItemModel homelistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 121.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 121.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Obx(
            () => Text(
              homelistItemModelObj.frame!.value,
              style: CustomTextStyles.titleSmallOnErrorContainer,
            ),
          ),
        ),
      ),
    );
  }
}
