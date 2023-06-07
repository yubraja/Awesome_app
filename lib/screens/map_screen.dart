import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MapScreen extends StatelessWidget {
   MapScreen({super.key});

  
  
  final MapController mapController = MapController.withUserPosition(
        trackUserLocation: UserTrackingOption(
           enableTracking: true,
           unFollowUser: false,
        )
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


        child:OSMFlutter(
          controller: mapController,

          ),
        height: MediaQuery.of(context).size.height*0.75,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.amber,),


      ),
    );
  }
}