import 'dart:ui';

import 'package:flutter/material.dart';

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
      body: Container(
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
                  child: Column(

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
                        SizedBox(width: 270),
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
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
              left: 50,
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
                            padding: EdgeInsets.only(top: 20.0,left: 20.0),
                            child: Text("Balance", style: TextStyle(fontSize: 18,),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0,left: 45.0),
                            child: Text("Rewards", style: TextStyle(fontSize: 18,),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0,left: 40.0),
                            child: Text("Total Trip", style: TextStyle(fontSize: 18,),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,left: 20.0),
                            child: Text("\$ 0", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0,left: 85.0),
                            child: Text("\$ 0", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0,left: 100.0),
                            child: Text("0", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 35,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,size: 35,),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,size: 35,),
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
