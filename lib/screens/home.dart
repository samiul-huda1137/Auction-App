import 'package:auction_app/screens/products.dart';
import 'package:auction_app/screens/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:auction_app/model/category.dart';
import 'package:auction_app/model/product.dart';
import 'package:flip_box_bar_plus/flip_box_bar_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final lister = Categories.generateList();
  final trend = Trending.generateList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 219, 205),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              title: Text(
                'Hey HuDuck',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Let's Make A Bid!",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.notifications_outlined,
                size: 30,
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Items',
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              size: 28,
                            )),
                      ),
                      margin: EdgeInsets.only(left: 18, right: 10),
                      color: Colors.white,
                      height: 50,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
                      color: Colors.black,
                      height: 50,
                      child: Icon(
                        Icons.tune_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, bottom: 15),
              height: 140,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: lister.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Color.fromARGB(255, 221, 149, 107),
                      height: 130,
                      width: 80,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 8,
                              child: Container(
                                child: Image.asset(
                                  lister[index].img,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                lister[index].name,
                                style: TextStyle(fontSize: 20),
                              )),
                        ],
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Trending Auctions',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Color.fromARGB(255, 247, 222, 208),
                      height: 150,
                      width: 120,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 7,
                              child: Container(
                                child: Image.asset(
                                  trend[index].img,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    trend[index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Current bid',
                                  ),
                                  Text(
                                    trend[index].price,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 99, 87, 19),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  }),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Color.fromARGB(255, 231, 236, 160),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Products()),
                  );
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
