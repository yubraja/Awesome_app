import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MapScreen extends StatefulWidget {
   MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

late MapController mapController;

  @override
  void initState() {


    mapController = MapController.withUserPosition(
        trackUserLocation: UserTrackingOption(
           enableTracking: true,
           unFollowUser: false,
        )
);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mapController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


        child:OSMFlutter(
          controller: mapController,
          initZoom: 12,
        minZoomLevel: 8,
        maxZoomLevel: 14,
        stepZoom: 1.0,
        userLocationMarker: UserLocationMaker(
            personMarker: MarkerIcon(
                icon: Icon(
                    Icons.location_history_rounded,
                    color: Colors.red,
                    size: 48,
                ),
            ),
            directionArrowMarker: MarkerIcon(
                icon: Icon(
                    Icons.double_arrow,
                    size: 48,
                ),
            ),
        ),
         roadConfiguration: RoadOption(
                roadColor: Colors.yellowAccent,
        ),
        markerOption: MarkerOption(
            defaultMarker: MarkerIcon(
                icon: Icon(
                  Icons.person_pin_circle,
                  color: Colors.blue,
                  size: 56,
                  ),
                )
        ),
    


          ),
        height: MediaQuery.of(context).size.height*0.75,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.amber,),


      ),
    );
  }
}