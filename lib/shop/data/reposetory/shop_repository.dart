import 'package:ecom_clean_arch/core/error/exeptions.dart';
import 'package:ecom_clean_arch/core/error/faliare.dart';
import 'package:ecom_clean_arch/shop/data/datasource/shop_remote_datasource.dart';
import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';
import 'package:dartz/dartz.dart';

class ShopRepository extends BaseShopReposetory {
  final BaseShopRemoteDatasource baseShopRemoteDatasource;

  ShopRepository({required this.baseShopRemoteDatasource});
  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    final result = await baseShopRemoteDatasource.getAllCategories();
    try {
      return Right(result);
    } on ServerExeption catch (e) {
      return Left(ServerFailure(
        e.errorMessageModel.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getAllProducts() async {
    final result = await baseShopRemoteDatasource.getAllProducts();
    try {
      return Right(result);
    } on ServerExeption catch (e) {
      return Left(ServerFailure(e.errorMessageModel.toString()));
    }
  }
}
