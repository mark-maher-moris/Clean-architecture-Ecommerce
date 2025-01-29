import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final String price;
  final String category;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.id,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
  });
  @override
  List<Object?> get props => [title, id, price, category, description, image];
}
