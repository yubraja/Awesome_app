import 'package:flutter/material.dart';

class Description extends StatelessWidget {

  
  String name;

  Description({ required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Text(name),

    );
  }
}