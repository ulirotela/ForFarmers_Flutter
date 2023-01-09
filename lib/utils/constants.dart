
import 'package:farmapp/model/product_model.dart';
import 'package:farmapp/screens/account_screen.dart';
import 'package:farmapp/screens/cart_screen.dart';
import 'package:farmapp/screens/home_screen.dart';
import 'package:farmapp/screens/more_screen.dart';
import 'package:farmapp/widgets/simple_product_widget.dart';
import 'package:flutter/material.dart';

const double kAppBarHeight = 80;

const String amazonLogoUrl =
    "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png";

const List<String> categoriesList = [
  "Tomatoes",
  "Berry",
  "Lectuce",
  "Pineapple",
  "Fruits",
  "Cucumber",
  "Banana",
  "Oranges, tangarine",
  "Potatoes"
];

const List<Widget> screens = [
HomeScreen(),
AccountScreen(),
CartScreen(),
MoreScreen(),
];
const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://upload.wikimedia.org/wikipedia/commons/c/c7/Culinary_fruits_front_view_Banner.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",

];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
];

const List<String> adItemNames = [
  "Uli Pay",
  "Easy Access",
  "Rewards",
  "Online Receipts"
];

const String farmappLogo =
    "https://upload.wikimedia.org/wikipedia/commons/1/1e/Logo_forfarmers.gif";
    

List<Widget> testChildren = [
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
        productName: "Rick Astley",
        cost: 9999999999999,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Rick Seller",
        sellerUid: "983498ihjb",
        rating: 1,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
        productName: "Rick Astley",
        cost: 9999999999999,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Rick Seller",
        sellerUid: "983498ihjb",
        rating: 1,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
        productName: "Rick Astley",
        cost: 9999999999999,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Rick Seller",
        sellerUid: "983498ihjb",
        rating: 1,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
        productName: "Rick Astley",
        cost: 9999999999999,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Rick Seller",
        sellerUid: "983498ihjb",
        rating: 1,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
        productName: "Rick Astley",
        cost: 9999999999999,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Rick Seller",
        sellerUid: "983498ihjb",
        rating: 1,
        noOfRating: 1),
  )
];

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];
