import 'package:flutter/material.dart';



class   Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.6,

      child: Card(
        child: Text('hello'),
      ),
    
    );
  }
}