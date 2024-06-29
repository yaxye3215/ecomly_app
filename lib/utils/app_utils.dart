import 'package:flutter/material.dart';

import '../src/models/category.dart';
import '../src/models/product.dart';

class AppUtils {
  static Color bgColor = const Color(0xffF3F3F3);
  static Color pColor = const Color(0xff46A7E3);

  static List<String> sliders = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];

  static List<Category> categories = [
    Category(
      title: "Watches",
      image: "assets/images/Watches.png",
    ),
    Category(
      title: "Shoes",
      image: "assets/images/shoes.png",
    ),
    Category(
      title: "Shirts",
      image: "assets/images/shirts.png",
    ),
    Category(
      title: "Mobiles",
      image: "assets/images/mobile.png",
    ),
    Category(
      title: "Computers",
      image: "assets/images/computer.png",
    ),
    Category(
      title: "Dress",
      image: "assets/images/dress.png",
    ),
    Category(
      title: "Computers",
      image: "assets/images/camera.png",
    ),
  ];

  static List<Product> products = [
    Product(
      title: "disregard and contempt for human",
      image: "assets/images/product1.png",
      price: 109.99,
      category: "Mobiles",
      description: "disregard and contempt for human",
      rating: "4.7",
    ),
    Product(
      title: "disregard and contempt for human",
      image: "assets/images/product2.png",
      price: 109.99,
      category: "Mobiles",
      description: "disregard and contempt for human",
      rating: "4.7",
    ),
  ];
}
