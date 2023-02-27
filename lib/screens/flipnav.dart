import 'package:flutter/material.dart';
import 'home.dart';
import 'category.dart';
import 'product.dart';
import 'profile.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flip_box_bar_plus/flip_box_bar_plus.dart';

class FlipNav extends StatefulWidget {
  const FlipNav({super.key});

  @override
  State<FlipNav> createState() => _FlipNavState();
}

class _FlipNavState extends State<FlipNav> {
  int selectedIndex = 0;
  List<Widget> pages = [HomeePage(), Category(), Product(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: FlipBoxBarPlus(
            selectedIndex: selectedIndex,
            items: [
              FlipBarItem(
                  icon: Icon(Icons.home),
                  text: Text("Home"),
                  frontColor: selectedIndex == 0 ? Colors.blue : Colors.white,
                  backColor: Colors.blueAccent),
              FlipBarItem(
                  icon: Icon(Icons.category),
                  text: Text("Category"),
                  frontColor: selectedIndex == 1 ? Colors.cyan : Colors.white,
                  backColor: Colors.cyanAccent),
              FlipBarItem(
                  icon: Icon(Icons.shop),
                  text: Text("Product"),
                  frontColor: selectedIndex == 2 ? Colors.orange : Colors.white,
                  backColor: Colors.orangeAccent),
              FlipBarItem(
                  icon: Icon(Icons.person),
                  text: Text("Profile"),
                  frontColor: selectedIndex == 3 ? Colors.purple : Colors.white,
                  backColor: Colors.purpleAccent),
            ],
            onIndexChanged: (newIndex) {
              setState(() {
                selectedIndex = newIndex;
              });
            }));
  }
}
