import 'package:flutter/cupertino.dart';

//welcome
const whiteWelG1 = Color(0xFF97A8B8);
const whiteWelG2 = Color(0xFF7A95A8);
const whiteWelG3 = Color(0xFF6B8A9E);
const blueBack = Color(0xFF033A59);

// home
const whiteBack = Color(0xFF9DADBC);
const whiteItemG1 = Color(0xFFE5ECEF);
const whiteItemG2 = Color(0xFF6F8A9F);
const whiteCardG1 = Color(0xFFA4B6C2);
const whiteCardG2 = Color(0xFF618094);
const whiteMidBack = Color(0xFFAABCC8);
const whiteMid = Color(0xFFAABBC3);
const textColor = Color(0xFFFFFFFF);

class Cartoon {
  final String title, nickname, img;
  const Cartoon({
    required this.title,
    required this.nickname,
    required this.img,
  });
}

class CartoonUserUser {
  final String title;
  final int number;
  const CartoonUserUser({required this.title, required this.number});
}

const cartoonUser = [
  CartoonUserUser(title: 'Love', number: 323),
  CartoonUserUser(title: 'Msg', number: 23),
  CartoonUserUser(title: 'Poke', number: 124),
  CartoonUserUser(title: 'Saved', number: 78),
  CartoonUserUser(title: 'Web Visit', number: 14),
  CartoonUserUser(title: 'Profile Visit', number: 86),
  CartoonUserUser(title: 'Followers', number: 1200),
];

const cartoons = [
  Cartoon(
    title: '47 Ronin',
    nickname: 'A character from Japanese well-known Ancient History.',
    img: 'assets/cartoon/cartoon_img/ronin.png',
  ),
  Cartoon(
    title: 'The Joker',
    nickname: 'Fictional fantasy of a common man.',
    img: 'assets/cartoon/cartoon_img/joker.png',
  ),
  Cartoon(
    title: 'Pam Beesley',
    nickname: 'A live character from The Office Series.',
    img: 'assets/cartoon/cartoon_img/pam.png',
  ),
  Cartoon(
    title: 'Ragetti',
    nickname: 'A Popular character from the Pirates of the Caribbean.',
    img: 'assets/cartoon/cartoon_img/zombie.png',
  ),
  Cartoon(
    title: 'Tango',
    nickname: 'Japanese warrrior form ancient history.',
    img: 'assets/cartoon/cartoon_img/tango.png',
  ),
  Cartoon(
    title: 'Dinosaur',
    nickname: 'Fictional character from The Jungle.',
    img: 'assets/cartoon/cartoon_img/dinosaur.png',
  ),
  Cartoon(
    title: 'Jane',
    nickname: 'Jane is an actress .Known for EVIL DEAD.',
    img: 'assets/cartoon/cartoon_img/jane.png',
  ),
  Cartoon(
    title: 'Jack',
    nickname: 'Jane ia a known lousy character',
    img: 'assets/cartoon/cartoon_img/jack.png',
  ),
];
