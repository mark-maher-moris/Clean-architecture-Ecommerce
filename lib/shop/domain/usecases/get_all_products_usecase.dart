import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';

class GetAllProductsUsecase {
  final BaseShopReposetory baseProductsReposetory;

  GetAllProductsUsecase(this.baseProductsReposetory);

  Future<List<Product>> execute() async {
    return await baseProductsReposetory.getProducts();
  }
}
