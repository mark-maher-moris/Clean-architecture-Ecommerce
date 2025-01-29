import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';

class GetAllCategoriesUsecase {
  BaseShopReposetory baseProductsReposetory;

  GetAllCategoriesUsecase(this.baseProductsReposetory);
  execute() {
    return baseProductsReposetory.getCategories();
  }
}
