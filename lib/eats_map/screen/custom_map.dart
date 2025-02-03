import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../util/markers.dart';
import '../provider/custom_map_provider.dart';

class CustomMap extends StatefulWidget {
  const CustomMap({super.key});

  @override
  State<CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  final CameraPosition _cameraPosition =
  const CameraPosition(target: LatLng(25.346251, 74.636383), zoom: 14.80);
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _fetchMarkers();
  }

  Future<void> _fetchMarkers() async {
    final response = await http.get(Uri.parse('https://console.cloud.google.com/google/maps-apis/datasets/b1613e63-81e6-4416-a8b1-6922c51c01fd?authuser=1&hl=en&project=myeatsapp-map-function-test'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final features = data['features'];

      Set<Marker> markers = features.map<Marker>((feature) {
        final geometry = feature['geometry'];
        final coordinates = geometry['coordinates'];
        final lat = coordinates[1];
        final lng = coordinates[0];

        return Marker(
          markerId: MarkerId(feature['id'].toString()),
          position: LatLng(lat, lng),
          infoWindow: InfoWindow(
            title: feature['properties']['name'],
            snippet: feature['properties']['description'],
          ),
        );
      }).toSet();

      setState(() {
        _markers = markers;
      });
    }
  }

  Future<Position> getuserlocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print("error $error");
    });

    return await Geolocator.getCurrentPosition();
  }

  getlocation() {
    getuserlocation().then((value) async {
      CameraPosition cameraPosition = CameraPosition(
        zoom: 14,
        target: LatLng(value.latitude, value.longitude),
      );
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
  }

  Set<Marker> updateMarkers(double zoom) {
    final Set<Marker> list = {};

    if (zoom > 15) {
      // Add detailed eateries
      list.addAll(getEateries);
    }
    if (zoom > 16.60) {
      list.addAll(getBasicEateries);
    }
    if (zoom > 17.70) {
      list.addAll(getGeneralEateries);
    }
    if(zoom> 18.80){
      list.addAll(getDetailedEateries);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<CustomMapProvider>(
            builder: (context, zoomProvider, child) {
              return GoogleMap(
                cloudMapId: "796b32454ea42516",
                initialCameraPosition: _cameraPosition,
                markers: _markers, // Use the fetched markers
                zoomControlsEnabled: false,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                onCameraMove: (CameraPosition position) {
                  zoomProvider.zoom = position.zoom;
                },
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
