import 'package:ecom_clean_arch/app/app.dart';
import 'package:ecom_clean_arch/shop/domain/entities/product.dart';
import 'package:flutter/material.dart';

void main() {
  Product product = const Product(
    id: 1,
    title: 'title',
    description: 'description',
    price: "10",
    category: '',
    image: '',
  );

  runApp(MyApp());
}

/*

https://api.themoviedb.org/3/

API Key 
628fb1580bc7496c2ab123490bd3bfee

API Read Access Token
eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MjhmYjE1ODBiYzc0OTZjMmFiMTIzNDkwYmQzYmZlZSIsIm5iZiI6MTczODA2MzQ3MS4wMDYsInN1YiI6IjY3OThiZTZlOWEzMGE4NWIyNzI0MzI3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.a4FIkwDj4V0-vMf-eWbPxq06GJRiwm28DXHLKfKtkks
*/
