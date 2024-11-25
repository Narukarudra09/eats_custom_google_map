import 'package:google_maps_flutter/google_maps_flutter.dart';

class Markers {}



final List<Marker> getEateries= [
  // Return a set of markers for detailed eateries


     Marker(
      markerId: const MarkerId('OL\'Days Cafe'),
      position: const LatLng(25.350304677167017, 74.64003592930115),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
      infoWindow: const InfoWindow(title: 'OL\'Days Cafe', snippet: 'General Eatery'),
    ),
    Marker(
      markerId: const MarkerId('Love Garden Cafe'),
      position: const LatLng(25.3563081016137, 74.6419769525528),
      infoWindow:
          const InfoWindow(title: 'Love Garden Cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('The OG\'s cafe'),
      position: const LatLng(25.3593125, 74.6469374999999),
      infoWindow:
          const InfoWindow(title: 'The OG\'s cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),

    Marker(
      markerId: const MarkerId('chai sutta bar'),
      position: const LatLng(25.34502387404998, 74.64116072568092),
      infoWindow:
          const InfoWindow(title: 'chai sutta bar', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),

    Marker(
      markerId: const MarkerId('Sip and Gossip'),
      position: const LatLng(25.3355625, 74.6389375),
      infoWindow:
          const InfoWindow(title: 'Sip and Gossip', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Eva\'s Eatery'),
      position: const LatLng(25.344940906011352, 74.64142354062281),
      infoWindow:
      const InfoWindow(title: 'Eva\'s Eatery', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Engineer\'s House Cafe'),
      position: const LatLng(25.343401858914962, 74.63749278100038),
      infoWindow:
      const InfoWindow(title: 'Engineer\'s House Cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('The Ora Cafe'),
      position: const LatLng(25.35488508529337, 74.64160083713301),
      infoWindow:
      const InfoWindow(title: 'The Ora Cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Coco'),
      position: const LatLng(25.341708305565138, 74.63964678347926),
      infoWindow:
      const InfoWindow(title: 'Coco Bhilwara Cafe', snippet: 'Detailed Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Way 2 Coffee'),
      position: const LatLng(25.34211567930187, 74.63906380796797),
      infoWindow: const InfoWindow(title: 'Way 2 Coffee', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Bobby\'s Cafe'),
      position: const LatLng(25.336829766016706, 74.64294162770342),
      infoWindow:
      const InfoWindow(title: 'Bobby\'s Cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('poc'),
      position: const LatLng(25.33473033462588, 74.64006067682224),
      infoWindow:
      const InfoWindow(title: 'Peace Over Coffee', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('NBC'),
      position: const LatLng(25.334984273821828, 74.6397911148359),
      infoWindow: const InfoWindow(
          title: 'Nothing before coffee bhilwara', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Nivi\'s Cafe'),
      position: const LatLng(25.34797338262223, 74.62906713848228),
      infoWindow: const InfoWindow(
          title: 'Nivi\'s Cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Mugs4buds Cafe'),
      position: const LatLng(25.343580696650005, 74.63819754130529),
      infoWindow: const InfoWindow(
          title: 'Mugs4buds Cafe', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Zorko Bhilwara'),
      position: const LatLng(25.336829766016706, 74.64294162770342),
      infoWindow:
      const InfoWindow(title: 'Zorko Bhilwara', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Urban Arroma'),
      position: const LatLng(25.341268016916153, 74.63983071437896),
      infoWindow:
      const InfoWindow(title: 'Urban Arroma', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Agra Chat Bhandar'),
      position: const LatLng(25.341268016916153, 74.63983071437896),
      infoWindow:
      const InfoWindow(title: 'Agra Chat Bhandar', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/cafe's_marker_image/coffee.png" ,height: 45,width: 45),
    ),
];

final List<Marker> getBasicEateries=[

    Marker(
      markerId: const MarkerId('TRC'),
      position: const LatLng(25.342813673133207, 74.63939606018313),
      infoWindow: const InfoWindow(title: 'TRC', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('kanha ji Dine in Restaurant'),
      position: const LatLng(25.343668431253267, 74.63838737940289),
      infoWindow: const InfoWindow(
          title: 'kanha ji Dine in Restaurant', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('IMOC'),
      position: const LatLng(25.3352299074599, 74.63856981898941),
      infoWindow:
      const InfoWindow(title: 'IMOC Cake n Bake', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),
    const Marker(
      markerId: MarkerId('eatery1'),
      position: LatLng(25.346251, 74.636383),
      infoWindow: InfoWindow(title: 'Eatery 1', snippet: 'Detailed Eatery'),
    ),
    Marker(
      markerId: const MarkerId('green'),
      position: const LatLng(25.333133484654116, 74.61927653458048),
      infoWindow: const InfoWindow(title: 'Green plaza', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),

    Marker(
      markerId: const MarkerId('Waffie'),
      position: const LatLng(25.334671553053806, 74.63966153470226),
      infoWindow:
      const InfoWindow(title: 'Waffie N\' More', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Season 6'),
      position: const LatLng(25.334671553053806, 74.63966153470226),
      infoWindow:
      const InfoWindow(title: 'Season 6 pure veg Restaurant', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),
    Marker(
      markerId: const MarkerId('Hot Pizza'),
      position: const LatLng(25.3593125, 74.6319999999999),
      infoWindow: const InfoWindow(title: 'Hot Pizza', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),



    Marker(
      markerId: const MarkerId('SAFFRON THE FAMILY RESTAURANT'),
      position: const LatLng(25.3446303, 74.6374665),
      infoWindow: const InfoWindow(
          title: 'SAFFRON THE FAMILY RESTAURANT', snippet: 'General Eatery'),
      icon: AssetMapBitmap("assets/images/restaurant's_marker_image/restaurant.png" ,height: 45,width: 45),
    ),

    const Marker(
      markerId: MarkerId('Chawlas Restaurant'),
      position: LatLng(25.3465, 74.6469374999999),
      infoWindow:
      InfoWindow(title: 'Chawlas Restaurant', snippet: 'General Eatery'),
    ),
];

final List<Marker>  getGeneralEateries=[
  // Return a set of markers for general eateries

    // Add more general eateries
    const Marker(
      markerId: MarkerId('Shivay Sandwich '),
      position: LatLng(25.3397125, 74.6365469),
      infoWindow:
      InfoWindow(title: 'Shivay Sandwich ', snippet: 'General Eatery'),
    ),
    const Marker(
      markerId: MarkerId('eatery3'),
      position: LatLng(25.340201358663805, 74.63942542535808),
      infoWindow: InfoWindow(title: 'Kanajicafe', snippet: 'General Eatery'),
    ),
];




