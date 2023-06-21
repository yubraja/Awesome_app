import 'package:flutter/material.dart';

class Description extends StatelessWidget {

  
  String name;
  String image;
  String description;
  double? ratings;

  Description({ required this.name,required this.image,required this.description, required this.ratings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Column(
        children: [

          Center(child: Hero(tag: 'image', child: Image(image: AssetImage(image))))
        ],

    
        ),
    
      
    );
  }
}