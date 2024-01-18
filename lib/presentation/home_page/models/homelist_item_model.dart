import '../../../core/app_export.dart';

/// This class is used in the [homelist_item_widget] screen.
class HomelistItemModel {
  HomelistItemModel({
    this.frame,
    this.id,
  }) {
    frame = frame ?? Rx("Cappuccino");
    id = id ?? Rx("");
  }

  Rx<String>? frame;

  Rx<String>? id;
}
