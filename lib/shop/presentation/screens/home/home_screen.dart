import 'package:ecom_clean_arch/core/resources/string_manager.dart';
import 'package:ecom_clean_arch/shop/data/datasource/shop_remote_datasource.dart';
import 'package:ecom_clean_arch/shop/data/reposetory/shop_repository.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';
import 'package:ecom_clean_arch/shop/domain/usecases/get_all_products_usecase.dart';
import 'package:ecom_clean_arch/shop/presentation/controller/shop_bloc.dart';
import 'package:ecom_clean_arch/shop/presentation/controller/shop_event.dart';
import 'package:ecom_clean_arch/shop/presentation/controller/shop_state.dart';
import 'package:ecom_clean_arch/shop/presentation/screens/home/ui_componantes/product_widget.dart';
import 'package:ecom_clean_arch/shop/presentation/screens/home/ui_componantes/section_header.dart';
import 'package:ecom_clean_arch/shop/presentation/widgets/app_drawer.dart';
import 'package:ecom_clean_arch/shop/presentation/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Product> products = [];

  void _getData() async {
    BaseShopRemoteDatasource shopRemoteDatasource = ShopRemoteDatasource();
    BaseShopReposetory productsReposetory =
        ShopRepository(baseShopRemoteDatasource: shopRemoteDatasource);
    var result = await GetAllProductsUsecase(productsReposetory).execute();
    result.fold((l) => print(l.message), (r) {});
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) {
      return ShopBloc()..add(GetAllProductsEvent());
    }, child: BlocBuilder<ShopBloc, ShopState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppbar(),
              SectionHeader(
                  text: StringManager.categories,
                  trilling: StringManager.viewAll),
              SectionHeader(text: StringManager.categories),
              ProductWidget()
            ],
          ),
        ),
      ));
    }));
  }
}
