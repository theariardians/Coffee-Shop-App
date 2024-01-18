import 'package:the_ari_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'homelist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "PangkalPinang",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Mangkol",
    ),
    SelectionPopupModel(
      id: 3,
      title: "TuaTunu",
    )
  ]);

  Rx<List<HomelistItemModel>> homelistItemList = Rx([
    HomelistItemModel(frame: "Cappuccino".obs),
    HomelistItemModel(frame: "Machiato".obs),
    HomelistItemModel(frame: "Latte".obs),
    HomelistItemModel(frame: "Americano".obs)
  ]);
}
