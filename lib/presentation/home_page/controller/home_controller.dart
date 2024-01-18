import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController searchEditTextController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    searchEditTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    homeModelObj.value.dropdownItemList.refresh();
  }
}
