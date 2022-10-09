import 'package:flutter/material.dart';

// home Screen
const hIconColor = Colors.white;
const hInActiveColor = Colors.grey;
const hTitleColor = Color(0xFF212121);

// details Screen
const dIconColor = Colors.white70;
const dTitleColor = Colors.white;
const dIconBack1 = Color(0xFF316273);
const dIconBack2 = Color(0xFF21515F);
const dIconBack3 = Color(0xFF204C57);
const dImgaeBack = Color(0xFF257D89);

const greenDark = Color(0xFF214451);
const textColor = Colors.grey;
const buttonColor = Color(0xFFDFAB3B);

class Car {
  final String title, subtitle, price, tag;
  final List<String> img;
  final List<Specifications> specifications;
  const Car({
    required this.img,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.tag,
    required this.specifications,
  });
}

class Specifications {
  final String title, subTitle, img, tag;

  const Specifications({
    required this.title,
    required this.tag,
    required this.img,
    required this.subTitle,
  });
}

const categories = [
  'All',
  'Lamborgini',
  'Mercedes',
  'Classsic',
  'Modern',
  'AutoMobile'
];

const specification = [
  Specifications(
      title: 'mileage',
      subTitle: '7.69',
      tag: ' km/l',
      img: 'assets/car/car_icon/car_i_2.png'),
  Specifications(
      title: 'maxPower',
      subTitle: '8500',
      tag: ' rpm',
      img: 'assets/car/car_icon/car_i_1.png'),
  Specifications(
      title: 'acceleration',
      subTitle: '2.8',
      tag: ' s',
      img: 'assets/car/car_icon/car_i_4.png'),
  Specifications(
      title: 'topSpeed',
      subTitle: '355',
      tag: ' km/h',
      img: 'assets/car/car_icon/car_i_5.png'),
];

const cars = [
  Car(
    img: [
      'assets/car/car_img/car1.png',
      'assets/car/car_img/car2.png',
      'assets/car/car_img/car3.png',
      'assets/car/car_img/car4.png',
    ],
    title: 'White Lamborghini',
    subtitle: 'Sports Car',
    price: '\$ 5m',
    tag: 'SuperCar',
    specifications: specification,
  ),
  Car(
    img: [
      'assets/car/car_img/car15.png',
      'assets/car/car_img/car13.png',
      'assets/car/car_img/car14.png',
      'assets/car/car_img/car12.png',
    ],
    title: 'Black Lamborghini',
    subtitle: 'Sports Car',
    price: '\$ 8m',
    tag: 'SuperCar',
    specifications: specification,
  ),
  Car(
    img: [
      'assets/car/car_img/car8.png',
      'assets/car/car_img/car9.png',
      'assets/car/car_img/car10.png',
      'assets/car/car_img/car11.png',
    ],
    title: 'Yellow Lamborghini',
    subtitle: 'Sports Car',
    price: '\$ 5m',
    tag: 'SuperCar',
    specifications: specification,
  ),
  Car(
    img: [
      'assets/car/car_img/car17.png',
      'assets/car/car_img/car16.png',
      'assets/car/car_img/car18.png',
    ],
    title: 'Blue Mercedes Benz',
    subtitle: 'Sports Car',
    price: '\$ 6m',
    tag: 'SuperCar',
    specifications: specification,
  ),
];
