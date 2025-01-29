import 'package:ecom_clean_arch/shop/domain/entities/product.dart';

abstract class BaseShopReposetory {
  Future<List<Product>> getProducts();
  Future<List<Product>> getCategories();
}
