import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories {
  String name;
  String img;

  Categories(this.name, this.img);
  static List<Categories> generateList() {
    return [
      Categories('Furnitures', 'furniture.jpg'),
      Categories('Portraits', 'portrait.jpg'),
      Categories('Others', 'misc.jpg'),
      Categories('Artifact', 'artifact.jpg'),
      Categories('Clocks', 'clock.jpg'),
      Categories('Jewellery', 'earring.jpg'),
    ];
  }
}
