import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';

abstract class BaseShopReposetory {
  Future<List<Product>> getAllProducts();
  Future<List<Category>> getAllCategories();
}
