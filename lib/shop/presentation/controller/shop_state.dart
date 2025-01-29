import 'package:ecom_clean_arch/core/utils/enums.dart';
import 'package:ecom_clean_arch/shop/domain/entities/category.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

class ShopState extends Equatable {
  final List<Product> products;
  final List<Category> categories;
  final RequestState state;
  final String errorMessage;
  const ShopState({
    this.products = const [],
    this.categories = const [],
    this.state = RequestState.loading,
    this.errorMessage = '',
  });
  @override
  List<Object?> get props => [products, categories, state, errorMessage];
}
