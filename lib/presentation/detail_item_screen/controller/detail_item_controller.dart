import 'package:the_ari_s_application4/core/app_export.dart';
import 'package:the_ari_s_application4/presentation/detail_item_screen/models/detail_item_model.dart';

/// A controller class for the DetailItemScreen.
///
/// This class manages the state of the DetailItemScreen, including the
/// current detailItemModelObj
class DetailItemController extends GetxController {
  Rx<DetailItemModel> detailItemModelObj = DetailItemModel().obs;
}
