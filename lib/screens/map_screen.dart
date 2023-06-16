import 'package:awesome_app/provider/place_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:provider/provider.dart';
import '../models/box.dart';
import '../models/places.dart';

class MapScreen extends StatefulWidget {
  MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _mapController = MapController(
    initMapWithUserPosition: UserTrackingOption(enableTracking: true),
  );

  var markerMap = <String, String>{};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _mapController.listenerMapLongTapping.addListener(() async {
        var position = _mapController.listenerMapSingleTapping.value;

        if (position != null) {
          await _mapController.addMarker(position,
              markerIcon: MarkerIcon(
                icon: Icon(
                  Icons.pin_drop,
                  color: Colors.blue,
                  size: 68,
                ),
              ));

          //Add Marker
          var key = '${position.latitude}_${position.longitude}';
          markerMap[key] = markerMap.length.toString();
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: OSMFlutter(
              controller: _mapController,
              mapIsLoading: const Center(
                child: CircularProgressIndicator(),
              ),
              userTrackingOption: UserTrackingOption(enableTracking: true),
              initZoom: 12,
              minZoomLevel: 4,
              maxZoomLevel: 14,
              stepZoom: 1.0,
              userLocationMarker: UserLocationMaker(
                  personMarker: MarkerIcon(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 48,
                    ),
                  ),
                  directionArrowMarker: MarkerIcon(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 80,
                    ),
                  )),
              roadConfiguration: RoadOption(roadColor: Colors.blueGrey),
              markerOption: MarkerOption(
                  defaultMarker: MarkerIcon(
                icon: Icon(
                  Icons.person_pin_circle,
                  color: Colors.black,
                  size: 48,
                ),
              )),
              onMapIsReady: (isReady) async {
                if (isReady) {
                  await Future.delayed(Duration(seconds: 1), () async {
                    await _mapController.currentLocation();
                  });
                }
              },
            ),
          ),
          Consumer<PlaceData>(


            
            builder: ((context, placeData, child) => Card(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      Text(placeData.data[index].name);
                    },
                  ),
                )),
          ),
        ],
      ),
    );
  }
}




// SizedBox(
//               child: Card(
//                 child: ListView.builder(
//                   itemCount: placeData.data.length
//                   ,itemBuilder: (context,index){
                      
                      
                  
//                 }),
//               ),
//             ),
//           )