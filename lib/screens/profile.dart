import 'package:auction_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(239, 237, 247, 100),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.black)],
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                    ),
                  ),
                ),
                Text(
                  "Sorry I Couldn't do much",
                  style: GoogleFonts.lobsterTwo(fontSize: 16),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.black)],
                    ),
                    child: const Icon(
                      Icons.home,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/portrait-of-a-cute-little-duckling-closeup-isolated-on-white-picture-id1158030230'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sami HuDuck",
                      style: GoogleFonts.titanOne(fontSize: 40)),
                  SizedBox(height: 7),
                  Text("Flutter Developer",
                      style: GoogleFonts.titanOne(fontSize: 25)),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.lightBlueAccent,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 27,
                    ),
                    title: Text(
                      "01731768459",
                      style: myStyle(18, Colors.black),
                    ),
                    trailing: Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.lightBlueAccent,
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 27,
                    ),
                    title: Text(
                      "samiul.huda1137@gmail.com",
                      style: myStyle(18, Colors.black),
                    ),
                    trailing: Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

myStyle(double size, Color clr, [FontWeight? fw]) {
  return GoogleFonts.fredokaOne(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}
