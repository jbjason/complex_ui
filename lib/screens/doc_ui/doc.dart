import 'package:flutter/material.dart';

const blueDark = Color(0xFF14162D);
const blueMDark = Color(0xFF31305A);
const blueLight = Color(0xFF393766);

const ashDark = Color(0xFFC4C8E5);
const ashhLight = Color(0xFFD7D9EE);
const buttonColor = Color(0xFFE7E9F6);
const dFloatColor = Color(0xFF8F90F3);
const buttonColor2 = Colors.grey;
const searchColor = Color(0xFF292F51);

class MyDoc {
  final String title, img, subTitle;
  const MyDoc({required this.title, required this.img, required this.subTitle});
}

const doneIcon =
    MyDoc(title: 'Done', img: 'assets/mydoc/icon/done.png', subTitle: '.icon');

const downloadIcon = MyDoc(
    title: 'Download',
    img: 'assets/mydoc/icon/download.png',
    subTitle: '.icon');

const homeIcon =
    MyDoc(title: 'Home', img: 'assets/mydoc/icon/home.png', subTitle: '.icon');

const menuIcon = [
  MyDoc(title: 'Menu1', img: 'assets/mydoc/icon/menu1.png', subTitle: '.menu'),
  MyDoc(title: 'Menu2', img: 'assets/mydoc/icon/menu2.png', subTitle: '.menu'),
];

const refreshIcon = [
  MyDoc(
      title: 'Refresh1',
      img: 'assets/mydoc/icon/folder1.png',
      subTitle: '.folder'),
  MyDoc(
      title: 'Refresh2',
      img: 'assets/mydoc/icon/folder2.png',
      subTitle: '.folder'),
  MyDoc(
      title: 'Refresh3',
      img: 'assets/mydoc/icon/folder2.png',
      subTitle: '.folder'),
];

const userIcon = [
  MyDoc(title: 'User1', img: 'assets/mydoc/icon/user1.png', subTitle: '.img'),
  MyDoc(title: 'User2', img: 'assets/mydoc/icon/user2.png', subTitle: '.img'),
  MyDoc(title: 'User3', img: 'assets/mydoc/icon/user3.png', subTitle: '.img'),
];

final myDocs = [
  const MyDoc(
      title: 'Chart1',
      img: 'assets/mydoc/doc_icon/chart1.png',
      subTitle: '.doc'),
  const MyDoc(
      title: 'Chart2',
      img: 'assets/mydoc/doc_icon/chart2.png',
      subTitle: '.doc'),
  const MyDoc(
      title: 'Chart3',
      img: 'assets/mydoc/doc_icon/chart3.png',
      subTitle: '.doc'),
  const MyDoc(
      title: 'Chart4',
      img: 'assets/mydoc/doc_icon/chart4.png',
      subTitle: '.doc'),
  const MyDoc(
      title: 'Cloud1',
      img: 'assets/mydoc/doc_icon/cloud1.png',
      subTitle: '.psd'),
  const MyDoc(
      title: 'Cloud2',
      img: 'assets/mydoc/doc_icon/cloud2.png',
      subTitle: '.psd'),
  const MyDoc(
      title: 'Cloud3',
      img: 'assets/mydoc/doc_icon/cloud3.png',
      subTitle: '.psd'),
  const MyDoc(
      title: 'Assets',
      img: 'assets/mydoc/doc_icon/folder1.png',
      subTitle: '.folder'),
  const MyDoc(
      title: 'Stuff',
      img: 'assets/mydoc/doc_icon/folder2.png',
      subTitle: '.folder'),
  const MyDoc(
      title: 'Mountain1',
      img: 'assets/mydoc/doc_icon/mountain1.png',
      subTitle: '.jpeg'),
  const MyDoc(
      title: 'Mountain2',
      img: 'assets/mydoc/doc_icon/mountain2.png',
      subTitle: '.jpeg'),
  const MyDoc(
      title: 'Mountain3',
      img: 'assets/mydoc/doc_icon/mountain3.png',
      subTitle: '.jpeg'),
  const MyDoc(
      title: 'Mountain4',
      img: 'assets/mydoc/doc_icon/mountain4.png',
      subTitle: '.jpeg'),
  const MyDoc(
      title: 'Wave1', img: 'assets/mydoc/doc_icon/wave1.png', subTitle: '.xls'),
  const MyDoc(
      title: 'Wave2', img: 'assets/mydoc/doc_icon/wave2.png', subTitle: '.xls'),
  const MyDoc(
      title: 'Wave3', img: 'assets/mydoc/doc_icon/wave3.png', subTitle: '.xls'),
  const MyDoc(
      title: 'Site', img: 'assets/mydoc/doc_icon/site.png', subTitle: '.net'),
  const MyDoc(
      title: 'Water1',
      img: 'assets/mydoc/doc_icon/water1.png',
      subTitle: '.xcode'),
  const MyDoc(
      title: 'Water2',
      img: 'assets/mydoc/doc_icon/water2.png',
      subTitle: '.xcode'),
  const MyDoc(
      title: 'Illustration',
      img: 'assets/mydoc/doc_icon/illustration.png',
      subTitle: '.eps'),
  const MyDoc(
      title: 'Record',
      img: 'assets/mydoc/doc_icon/record.png',
      subTitle: '.mp3'),
];
