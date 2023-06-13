import 'package:flutter/material.dart';
import '../constant.dart';


class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIdx=0;

 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _pageIdx=value;
          });
          
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
              label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'Profile'),
        ],
        currentIndex:_pageIdx ,
        elevation: 5,
      ),
      body: Center(
        child: navScreen[_pageIdx],
      ),
    );
  }
}
