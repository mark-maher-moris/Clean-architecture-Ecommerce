import 'package:dartz/dartz.dart';
import 'package:ecom_clean_arch/core/error/faliare.dart';
import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';

abstract class BaseShopReposetory {
  Future<Either<Failure, List<Product>>> getAllProducts();
  Future<Either<Failure, List<Category>>> getAllCategories();
}
