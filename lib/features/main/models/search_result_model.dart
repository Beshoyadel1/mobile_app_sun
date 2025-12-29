class SearchResultModel {
  final String category;
  final String title;
  final String? description;
  final String? price;
  final String? location;
  final String? image;

  SearchResultModel({
    required this.category,
    required this.title,
    this.description,
    this.price,
    this.location,
    this.image,
  });
}
