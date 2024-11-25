import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../util/markers.dart';

class CustomMapProvider with ChangeNotifier {
  final Set<Marker> _list = {};
 Set<Marker> get list => _list;

  void updateMarkers(double zoom) {
    _list.clear();
    if (zoom > 15) {
      // Add detailed eateries
      _list.addAll(getEateries());

    }
    if (zoom > 16) {
      _list.addAll(getBasicEateries());

    }
    if (zoom > 17) {
      _list.addAll(getGeneralEateries());

    }
    notifyListeners();
  }

  void onCameraMove(CameraPosition position) {
    // Handle zoom level changes
    updateMarkers(position.zoom);
  }

}

