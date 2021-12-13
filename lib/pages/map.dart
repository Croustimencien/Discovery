import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MyMap extends StatefulWidget {
  MyMap({Key? key}) : super(key: key);
  @override
  _map createState() => _map();
}

class _map extends State<MyMap> {
  //GoogleMapController myMapController;
  final Set<Marker> _markers = new Set();
  static const LatLng firstLocation = const LatLng(	48.390394, -4.486076);
  @override
  Widget build(BuildContext context) {
    return  Builder(
        builder: (context) =>
            Scaffold(
                appBar: AppBar(
                  title: Text('Map'),
                ),
                body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target: firstLocation,
                              zoom: 12
                          ),
                        ),
                      )
                    ]
                )
            )
    );
  }
}


