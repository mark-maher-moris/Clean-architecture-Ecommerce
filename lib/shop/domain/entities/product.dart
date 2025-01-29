import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        price,
        description,
        images,
      ];
}
