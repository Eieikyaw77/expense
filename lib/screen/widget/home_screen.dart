import 'package:budget_management/screen/widget/create_screen.dart';
import 'package:budget_management/util/color.dart';
import 'package:budget_management/util/navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _balanceCard() {
    return Card(
      elevation: 4,
      child: Container(
        // height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [b3Color, b4Color, b5Color]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Balance",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "\$ 4500",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Remaining Balance",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "\$ 2000",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
                top: 5,
                right: 5,
                child: Image.asset(
                  'assets/images/money.png',
                  height: 130,
                  width: 100,
                ))
          ]),
        ),
      ),
    );
  }

  Widget _listCard() {
    return Card(
      elevation: 2,
      color: white,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            // color: g1Color.withOpacity(0.15),
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    // decoration: BoxDecoration(
                    //     color: b2Color.withOpacity(0.15),
                    //     borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/shop_cart.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shopping",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Monday 8,2023",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "\$ 2",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        automaticallyImplyLeading: false,
        title: Text("Manage Budet"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: _balanceCard(),
            ),
            Container(
              // height: 500,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    _listCard(),
                    SizedBox(
                      height: 15,
                    ),
                    _listCard(),
                    SizedBox(
                      height: 15,
                    ),
                    _listCard(),
                    SizedBox(
                      height: 15,
                    ),
                    _listCard(),
                    SizedBox(
                      height: 15,
                    ),
                    _listCard(),
                    SizedBox(
                      height: 15,
                    ),
                    _listCard(),
                    SizedBox(
                      height: 15,
                    ),
                    _listCard(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: b4Color,
        onPressed: () {
          context.pushNav(screen: const CreateScreen());
        },
        child: Icon(Icons.add), // You can use different icons
      ),
    );
  }
}
