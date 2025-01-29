import 'package:ecom_clean_arch/shop/domain/entities/category.dart';

class CategoryModel extends Category {
  CategoryModel(
      {required super.id,
      required super.name,
      required super.image,
      required super.creationAt,
      required super.updatedAt});
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        creationAt: json['creationAt'],
        updatedAt: json['updatedAt']);
  }
}
