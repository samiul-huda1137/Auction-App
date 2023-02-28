import 'package:auction_app/Firebase/signup.dart';
import 'package:auction_app/screens/home.dart';
import 'package:auction_app/screens/products.dart';
import 'package:auction_app/screens/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        title: 'Auction App',
        debugShowCheckedModeBanner: false,
        home: const Profile());
  }
}
