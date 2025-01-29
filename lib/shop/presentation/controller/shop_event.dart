import 'package:equatable/equatable.dart';

abstract class ShopEvent extends Equatable {
  ShopEvent();
  List<Object> get props => [];
}

class GetAllProductsEvent extends ShopEvent {}

class GetAllCategoriesEvent extends ShopEvent {}
