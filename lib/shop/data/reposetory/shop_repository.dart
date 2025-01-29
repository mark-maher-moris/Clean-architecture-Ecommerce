import 'package:ecom_clean_arch/shop/data/datasource/shop_remote_datasource.dart';
import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';

class ShopRepository extends BaseShopReposetory {
  final BaseShopRemoteDatasource baseShopRemoteDatasource;

  ShopRepository({required this.baseShopRemoteDatasource});
  @override
  Future<List<Category>> getAllCategories() {
    baseShopRemoteDatasource.getAllCategories();
  }

  @override
  Future<List<Product>> getAllProducts() {
    baseShopRemoteDatasource.getAllProducts();
  }
}
