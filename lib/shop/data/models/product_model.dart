import 'package:json_annotation/json_annotation.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends Product {
  ProductModel({
    required int id,
    required String title,
    required String description,
    required int price,
    required List<String> images,
  }) : super(
          id: id,
          title: title,
          description: description,
          price: price,
          images: images,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
