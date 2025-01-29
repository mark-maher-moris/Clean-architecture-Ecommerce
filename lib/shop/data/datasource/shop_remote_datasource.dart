import 'package:dio/dio.dart';
import 'package:ecom_clean_arch/core/error/exeptions.dart';
import 'package:ecom_clean_arch/core/network/api_constance.dart';
import 'package:ecom_clean_arch/core/network/error_message_model.dart';
import 'package:ecom_clean_arch/shop/data/models/category_model.dart';
import 'package:ecom_clean_arch/shop/data/models/product_model.dart';

abstract class BaseShopRemoteDatasource {
  Future<List<ProductModel>> getAllProducts();
  Future<List<CategoryModel>> getAllCategories();
}

class ShopRemoteDatasource extends BaseShopRemoteDatasource {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    final response = await Dio().get(ApiConstance.productsPath);
    if (response.statusCode == 200) {
      return List<ProductModel>.from(
          response.data.map((e) => ProductModel.fromJson(e)));
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  Future<List<CategoryModel>> getAllCategories() async {
    final response = await Dio().get(ApiConstance.categoriesPath);
    if (response.statusCode == 200) {
      return List<CategoryModel>.from(
          response.data.map((e) => ProductModel.fromJson(e)));
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
