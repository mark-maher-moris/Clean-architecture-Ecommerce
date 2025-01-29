import 'package:ecom_clean_arch/shop/data/datasource/shop_remote_datasource.dart';
import 'package:ecom_clean_arch/shop/data/reposetory/shop_repository.dart';
import 'package:ecom_clean_arch/shop/domain/reposetories/base_shop_reposetory.dart';
import 'package:ecom_clean_arch/shop/domain/usecases/get_all_products_usecase.dart';
import 'package:ecom_clean_arch/shop/presentation/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseShopRemoteDatasource shopRemoteDatasource = ShopRemoteDatasource();
    BaseShopReposetory productsReposetory =
        ShopRepository(baseShopRemoteDatasource: shopRemoteDatasource);
    var result = await GetAllProductsUsecase(productsReposetory).execute();
    print(result);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppbar(),
          ],
        ),
      ),
    );
  }
}
