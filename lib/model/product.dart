import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Trending {
  String name;
  String img;
  String price;

  Trending(this.name, this.img, this.price);
  static List<Trending> generateList() {
    return [
      Trending('Tutankamun', 'artifact.jpg', '\$5500'),
      Trending('Earrings', 'earring.jpg', '\$2500'),
      Trending('Cupboard', 'furniture.jpg', '\$2000'),
      Trending('Pocketwatch', 'clock.jpg', '\$2000'),
      Trending('Whistler', 'portrait.jpg', '\$2500'),
      Trending('Tsun Tzu', 'misc.jpg', '\$2500'),
      Trending('Fruitwood Coffee Table', 'fct.jpg', '\$3000'),
      Trending('Antique Chest', 'ac.jpg', '\$2500'),
      Trending('French Gold Tea Set', 'gts.jpg', '\$5000'),
      Trending('Sapphire Ring', 'sr.jpg', '3850')
    ];
  }
}
