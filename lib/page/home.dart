import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transportx/page/bus.dart';
import 'package:transportx/page/metro.dart';
import 'package:transportx/page/train.dart';

import 'car.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // Track the selected tab

  // Method to handle navigation between tabs
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "animate",
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 340.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: SingleChildScrollView( // Make this scrollable
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 100),
                          const Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              "Choose your Transport",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                                child: Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  "Bus",
                                                  style: TextStyle(
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Bus()));
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    foregroundColor: Colors.lightBlue, backgroundColor: Colors.white, // Text color
                                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Select",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20.0),
                                            child: SizedBox(
                                              width: 180,
                                              height: 150,
                                              child: Image.asset("assets/images/Bus.png"),
                                            ),
                                          ),
                                        ],
                                      ), // Add some spacing between elements
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                                child: Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  "Metro",
                                                  style: TextStyle(
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Metro()));
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    foregroundColor: Colors.lightBlue, backgroundColor: Colors.white, // Text color
                                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Select",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20.0),
                                            child: SizedBox(
                                              width: 180,
                                              height: 150,
                                              child: Image.asset("assets/images/metro.png"),
                                            ),
                                          ),
                                        ],
                                      ), // Add some spacing between elements
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                                child: Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  "Car",
                                                  style: TextStyle(
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Car()));
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    foregroundColor: Colors.lightBlue, backgroundColor: Colors.white, // Text color
                                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Select",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20.0),
                                            child: SizedBox(
                                              width: 180,
                                              height: 150,
                                              child: Image.asset("assets/images/Bus.png"),
                                            ),
                                          ),
                                        ],
                                      ), // Add some spacing between elements
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                                child: Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  "Train",
                                                  style: TextStyle(
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Train()));
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    foregroundColor: Colors.lightBlue, backgroundColor: Colors.white, // Text color
                                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Select",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20.0),
                                            child: SizedBox(
                                              width: 180,
                                              height: 150,
                                              child: Image.asset("assets/images/Bus.png"),
                                            ),
                                          ),
                                        ],
                                      ), // Add some spacing between elements
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 30),
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 220),
                          Icon(
                            Icons.account_circle_sharp,
                            size: 35,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Where you will Go",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          width: 350,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                              icon: Icon(Icons.search, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 290,
                left: 30,
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Text(
                                "Balance",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 45.0),
                              child: Text(
                                "Rewards",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 40.0),
                              child: Text(
                                "Total Trip",
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 20.0),
                              child: Text(
                                "\$ 0",
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 85.0),
                              child: Text(
                                "\$ 0",
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 100.0),
                              child: Text(
                                "0",
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border, size: 35),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, size: 35),
            label: 'Location',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}