import 'package:get/get.dart';
import 'row_item_model.dart';

/// This class defines the variables used in the [pack_detail_composer_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PackDetailComposerContainerModel {
  Rx<List<RowItemModel>> rowItemList =
      Rx(List.generate(3, (index) => RowItemModel()));
}