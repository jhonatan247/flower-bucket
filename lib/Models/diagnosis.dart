import 'package:flower_bucket/Models/category.dart';

class DiagnosisModel {
  final String id;
  final String name;
  final List<CategoryModel> categories;

  DiagnosisModel({this.id, this.name, this.categories});
}
