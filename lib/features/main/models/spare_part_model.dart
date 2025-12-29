class SparePartModel {
  final String image;
  final String partName;
  final String description;
  final String price;
  final bool isNew;

  SparePartModel({
    required this.image,
    required this.partName,
    required this.description,
    required this.price,
    this.isNew = false,
  });
}
