import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Discovery',
        home: Builder(
            builder: (context) =>
                Scaffold(
                    appBar: AppBar(
                      title: Text('Discovery'),
                    ),
                    body: GoogleMap(initialCameraPosition: CameraPosition(
                      target: LatLng(37.77483, -122.41942 ),
                          zoom: 12
                    ),
                    )
                    )
                )
    );
  }
}

