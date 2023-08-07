import 'package:get/get.dart';
import 'gridframe811_item_model.dart';

/// This class defines the variables used in the [favourites_with_selection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavouritesWithSelectionModel {
  List favors = [
    {'text': 'Caring', 'value': false},
    {'text': 'Mindfullness', 'value': false},
    {'text': 'Sleep training', 'value': false},
    {'text': 'The therapists', 'value': false},
    {'text': 'Mother’s Community', 'value': false},
    {'text': 'Babysitting', 'value': false},
  ];
  RxList<Gridframe811ItemModel> gridframe811ItemList =
      <Gridframe811ItemModel>[].obs;
  FavouritesWithSelectionModel() {
    gridframe811ItemList.value = List.generate(favors.length,
        (index) => Gridframe811ItemModel(txt: favors[index]['text']));
  }
}
