import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.size,
    this.price,
    this.image,
    this.title,
    this.description,
    this.color,
  });

}

  List<Product> products = [
    Product(
        id: 1,
        title: "Floppy Disk",
        price: 1234,
        size: 12,
        description: dummyText,
        image: "assets/appimages/floppy.png",
        color: Color(0xFF333333)),
    Product(
        id: 2,
        title: "iPhone 12 Pro Max",
        price: 1234,
        size: 8,
        description: dummyText,
        image: "assets/appimages/iphone12.png",
        color: Color(0xFFFFCC99)),
    Product(
        id: 3,
        title: "MacBook",
        price: 1234,
        size: 24,
        description: dummyText,
        image: "assets/appimages/macbook.png",
        color: Color(0xFF808080)),
    Product(
        id: 4,
        title: "Sandisk Pendrive",
        price: 1234,
        size: 12,
        description: dummyText,
        image: "assets/appimages/pendrive.jpg",
        color: Color(0xFFC0C0C0)),
    Product(
        id: 5,
        title: "Google Pixel",
        price: 1234,
        size: 24,
        description: dummyText,
        image: "assets/appimages/pixel.jpg",
        color: Color(0xFF110000)),
    Product(
        id: 6,
        title: "SAMSUNG TAB",
        price: 1234,
        size: 24,
        description: dummyText,
        image: "assets/appimages/tablet.jpg",
        color: Color(0xFF001100)),
  ];

  String dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.";


