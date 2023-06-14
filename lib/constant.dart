import 'package:flutter/material.dart';
import './screens/map_screen.dart';

List<Widget> navScreen=[
  Text( 'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),

           MapScreen(),

             Text( 'Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            
            

  
];




//this code is used to locate the latitude and longitude according to ontap 


// onGeoPointClicked: (geoPoint) {
//             var key = '${geoPoint.latitude}_${geoPoint.longitude}';
//             if (geoPoint != null) {
//               showBottomSheet(
//                   context: context,
//                   builder: (context) {
//                     return Card(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Expanded(
//                                 child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   'position ${markerMap[key]}',
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.blue),
//                                 ),
//                                 const Divider(thickness: 1,),
//                                   Text(
//                                   key,
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       color: Colors.red),
//                                 ),
//                               ],
//                             )),
//                             GestureDetector(
//                               onTap: () => Navigator.pop(context),
//                               child: Icon(Icons.clear),
//                             )
//                           ],
//                         ),
//                       ),
//                     );
//                   });
//             }
//           },