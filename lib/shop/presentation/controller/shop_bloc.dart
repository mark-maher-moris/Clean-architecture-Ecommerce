import 'package:ecom_clean_arch/core/utils/enums.dart';
import 'package:ecom_clean_arch/shop/data/datasource/shop_remote_datasource.dart';
import 'package:ecom_clean_arch/shop/data/reposetory/shop_repository.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';
import 'package:ecom_clean_arch/shop/domain/usecases/get_all_products_usecase.dart';
import 'package:ecom_clean_arch/shop/presentation/controller/shop_event.dart';
import 'package:ecom_clean_arch/shop/presentation/controller/shop_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(ShopState()) {
    on<GetAllProductsEvent>((event, emit) async {
      BaseShopRemoteDatasource baseShopRemoteDatasource =
          ShopRemoteDatasource();
      BaseShopReposetory baseShopReposetory = ShopRepository(
        baseShopRemoteDatasource: baseShopRemoteDatasource,
      );
      final result = await GetAllProductsUsecase(baseShopReposetory).execute();
      emit(const ShopState(products: [], state: RequestState.loaded));
      result.fold(
          (l) => emit(ShopState(
              products: [],
              state: RequestState.error,
              errorMessage: l.message)),
          (r) => null);
    });
  }
}
