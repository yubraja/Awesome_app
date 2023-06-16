import 'package:flutter/material.dart';
import '../models/places.dart';

class PlaceData extends ChangeNotifier{


  List<Places> data = [
    Places(
        name: 'patan durbar square',
        lat: 23.8500,
        lang: 72.1210,
        image: 'patan.jpeg',
        description:
            'This UNESCO heritage site, located in the centre of Lalitpur is one of the most visited places in Nepal. The architecture and history can be seen in the temples, palaces and houses and best reflect the culture of this country. Located just a few kilometres from Kathmandu City, the Durbar Square Patan is one of the three main Durbar Squares in Kathmandu Valley and offers a perfect blend between ancient history and culture along with modern local street food. The best time to visit Durbar Square Patan is from October to December in order to have the best outdoor experience. It is often overcrowded during the weekends so it is best to visit during the weekdays. Unfortunately, a lot of this area was destroyed during the 2015 earthquake, leading to it being seen as an unattractive place to visit. However, over the years, the government, as well as the community, have been putting in their efforts to rebuild this area, making Patan one of the most artistic Buddhist cities in the world and the Durbar Square a must-visit attraction in Nepal.',
            ),
    Places(
        name: 'Pashupatinath Temple',
        lat: 27.7105,
        lang: 85.3488,
        image: 'pashupatinath.jpeg',
        description:
        'One of the holiest Hindu shrines in Nepal, the Pashupatinath Temple is stretched across both the banks of the beautiful and sacred Bagmati River on the eastern fringes of the capital city of Kathmandu. The magnificent sanctum devoted to Lord Shiva draws in thousands of devotees who come to offer their prayers and seek blessings from him. Sprawled over a large area with temples and ashrams, it is believed that the Jyotirlinga housed in the Pashupatinath temple is the head of the body which is made up of the twelve Jyotirlinga in India. In 1979, the magnificent temple was declared a UNESCO World Heritage Site.'
          ),

   Places(
        name: 'Kathmandu durbar square',
        lat: 27.7043,
        lang: 85.3075,
        image: 'kathmandu.jpeg',
        description:
          'Kathmandu Durbar Square. The place which has witnessed and received one king after the other as they sat and ruled over Nepal a long time ago, where new rulers were crowned while the steady beats of drums and trumpets filled the place. The regal Kathmandu Durbar Square is one of the three durbar squares in the country. Till date, the place remains the most remarkable legacy of Kathmandu\'s traditional architecture. Even though the unfortunate earthquake of 2015 took its toll on the building and around half a dozen places within the premises collapsed, it has still retained its original glory. Three squares - A former elephant stable Basantapur square, main Durbar square on the west and another part of Durbar Square that houses the entrance to Hanuman Dhoka which are loosely connected make up the Durbar Square area.'        
        ),

  
  ];




  


  
}






