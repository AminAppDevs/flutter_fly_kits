class GroceryProductModel {
  final int id;
  final String coverImage;
  final List<String> galleryImages;
  final String name;
  final String subTitle;
  final double price;
  final String description;

  GroceryProductModel({
    required this.id,
    required this.coverImage,
    required this.galleryImages,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.description,
  });
}

class GroceryCartIemModel {
  final int id;
  final String coverImage;
  final String name;
  final String subTitle;
  final double price;
  final int qyt;

  GroceryCartIemModel({
    required this.id,
    required this.coverImage,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.qyt,
  });
}
