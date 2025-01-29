import 'package:dartz/dartz.dart';
import 'package:ecom_clean_arch/core/error/faliare.dart';
import 'package:ecom_clean_arch/shop/data/models/category_model.dart';
import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';

class GetAllCategoriesUsecase {
  BaseShopReposetory baseProductsReposetory;

  GetAllCategoriesUsecase(this.baseProductsReposetory);
  Future<Either<Failure, List<Category>>> execute() {
    return baseProductsReposetory.getAllCategories();
  }
}
