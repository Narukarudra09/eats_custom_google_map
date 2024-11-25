import 'package:flutter/material.dart';


class CustomMapProvider with ChangeNotifier {
  double _zoom = 15.0;
  double get zoom => _zoom;

  set zoom(double zoomLevel) {
    _zoom = zoomLevel;
    notifyListeners();
  }


}

