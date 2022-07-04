import 'package:flutter/material.dart';

class Shoe {
  final String name;
  final String imageName;
  final String description;
  final String price;
  final Color bgColor;
  final List<Color> availabelColor;
  Shoe(this.name, this.imageName, this.description, this.price, this.bgColor, this.availabelColor);
}

List<Shoe> categoriesShoes = [
  Shoe("Black Sneakers", "2.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$330.85", Color(0xFFF616163), [Colors.red, Colors.pink, Colors.yellow]),
  Shoe("Black Sneakers", "3.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$520.85", Color(0xFFF685235), [Colors.red, Colors.pink, Colors.yellow]),
  Shoe("Black Sneakers", "4.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$700.85", Color(0xFFF525227), [Colors.red, Colors.pink, Colors.yellow]),
  Shoe("Black Sneakers", "5.jfif", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$430.85", Color(0xFFF625408), [Colors.red, Colors.pink, Colors.yellow]),
  Shoe("Black Sneakers", "6.jfif", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$530.85", Color(0xFFF625500), [Colors.red, Colors.pink, Colors.yellow]),
  Shoe("Black Sneakers", "2.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec maximus tellus. Fusce elementum nibh ", "\$530.85", Color(0xFFF612552), [Colors.red, Colors.pink, Colors.yellow]),
];