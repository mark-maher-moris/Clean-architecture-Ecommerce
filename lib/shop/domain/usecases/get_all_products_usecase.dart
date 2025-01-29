import 'package:dartz/dartz.dart';
import 'package:ecom_clean_arch/core/error/faliare.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';

class GetAllProductsUsecase {
  final BaseShopReposetory baseProductsReposetory;

  GetAllProductsUsecase(this.baseProductsReposetory);

  Future<Either<Failure, List<Product>>> execute() async {
    return await baseProductsReposetory.getAllProducts();
  }
}
