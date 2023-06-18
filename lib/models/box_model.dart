import 'package:flutter/material.dart';

class BoxModel extends StatelessWidget {
  String name;
  String image;
  String description;
  double? ratings;

  BoxModel(
      {required this.name,
      required this.image,
      required this.description,
      this.ratings=0,
      
    }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Card(
        child: Column(children: [
          Stack(
            children: [
              Image(image: AssetImage(image)),
              Text(name)
            ],
          )
        ],),
      ),
    );
  }
}
