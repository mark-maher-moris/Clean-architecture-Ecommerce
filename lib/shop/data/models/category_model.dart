import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel extends Category {
  CategoryModel({
    required super.id,
    required super.name,
    required super.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
