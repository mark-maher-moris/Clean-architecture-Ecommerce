import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String? image;
  final String? creationAt;
  final String? updatedAt;
  Category(
      {required this.id,
      required this.name,
      required this.image,
      required this.creationAt,
      required this.updatedAt});

  @override
  List<Object?> get props => [id, name, image, creationAt, updatedAt];
}
