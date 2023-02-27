import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeePage extends StatefulWidget {
  const HomeePage({super.key});

  @override
  State<HomeePage> createState() => _HomeePageState();
}

class _HomeePageState extends State<HomeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
    );
  }
}
