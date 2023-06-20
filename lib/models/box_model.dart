import 'package:flutter/material.dart';
import '../screens/desciption.dart';

class BoxModel extends StatelessWidget {
  String name;
  String image;
  String description;
  double? ratings;

  BoxModel({
    required this.name,
    required this.image,
    required this.description,
    this.ratings = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>Description(name: name,),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.6,
        child: Card(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Expanded(
                    child: Container(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: double.infinity,
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.black,
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
