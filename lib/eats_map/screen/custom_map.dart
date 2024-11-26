import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
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
  String maptheme = "";

  @override
  void initState() {
    super.initState();
    DefaultAssetBundle.of(context)
        .loadString("assets/custom_day.json")
        .then((Value) {
      maptheme = Value;
    });
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
            initialCameraPosition: _cameraPosition,
            markers: updateMarkers(zoomProvider.zoom),
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              controller.setMapStyle(maptheme);
              _controller.complete(controller);
            },
            onCameraMove: (CameraPosition position) {
              zoomProvider.zoom = position.zoom;
            },
          );
        }),
      ),

      /*floatingActionButton: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          showModalBottomSheet(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height * 0.9,
                minHeight: MediaQuery.sizeOf(context).height * 0.5,
              ),
              useSafeArea: true,
              enableDrag: true,
              context: context,
              builder: (context) {
                return Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 8,
                          decoration: const BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black26,
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: TextField(
                                  textInputAction: TextInputAction.search,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black26,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black26,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Text(
                                    "Recommend",
                                    style: TextStyle(color: Colors.black26),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      thickness: 2,
                                      color: Colors.black26,
                                      indent: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),

                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.green,
                    blurStyle: BlurStyle.inner,
                    spreadRadius: 10,
                    blurRadius: 100),
              ], borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
