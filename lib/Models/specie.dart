import 'package:flower_bucket/Models/category.dart';

class SpecieModel {
  final String id;
  final String name;
  final String scientificName;
  final String family;
  final String description;
  final String image1Url;
  final String image2Url;
  final String distributionUrl;
  final List<String> literature;
  final String webUrl;
  final List<CategoryModel> categories;

  SpecieModel(
      {this.id,
      this.name,
      this.scientificName,
      this.family,
      this.description,
      this.image1Url,
      this.image2Url,
      this.distributionUrl,
      this.literature,
      this.webUrl,
      this.categories});
}
