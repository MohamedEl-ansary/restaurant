class FDModel {
  final String image;
  final String text;
  final int? price;
  String? salText;
  FDModel({
    required this.image,
    required this.text,
    required this.price,
  }) {
    salText = '$price PE';
  }
}
