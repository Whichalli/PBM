import '../controller/favourites_with_selection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FavouritesWithSelectionScreen.
///
/// This class ensures that the FavouritesWithSelectionController is created when the
/// FavouritesWithSelectionScreen is first loaded.
class FavouritesWithSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouritesWithSelectionController());
  }
}
