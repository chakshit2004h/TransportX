import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:transportx/main.dart';
import 'package:flutter/material.dart';
import 'package:transportx/page/booking.dart';

import 'home.dart';
import 'location.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int currentIndex = 0;

  late List<Widget> pages;
  late Widget currentpage;
  late Home homepage;
  late Booking book;
  late Location loc;

  @override

  void initState(){
    homepage = Home();
    book = Booking();
    loc = Location();

    pages = [homepage,book,loc];
    super.initState();

  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          Icon(Icons.home_outlined,color: Colors.white,size: 30,),
          Icon(Icons.bookmark_border,color: Colors.white,size: 30,),
          Icon(Icons.location_on,color: Colors.white,size: 30,),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
