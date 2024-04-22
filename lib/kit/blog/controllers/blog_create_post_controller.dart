import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class BlogCreatePostController extends GetxController {
  XFile? image;
  // upload image
  void uploadImage({required bool fromGallery}) async {
    final ImagePicker picker = ImagePicker();
    final LostDataResponse response = await picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (fromGallery) {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      this.image = image;
      update();
    } else {
      final XFile? image = await picker.pickImage(source: ImageSource.camera);
      this.image = image;
      update();
    }
  }
}
