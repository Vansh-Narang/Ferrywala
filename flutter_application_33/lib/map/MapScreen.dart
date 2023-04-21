import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> markers = {};
  late GoogleMapController mapController;
  var currlocation;
  var clients = [];
  //final Completer<GoogleMapController> _controller = Completer();
  static const LatLng source = LatLng(30.166810, 77.309800);
  static const LatLng dest = LatLng(30.167319, 77.311288);

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  // void addCustomIcon() {
  //   BitmapDescriptor.fromAssetImage(
  //     const ImageConfiguration(),
  //     "assets/maps-and-flags.png",
  //   ).then(
  //     (icon) {
  //       setState(() {
  //         markerIcon = icon;
  //       });
  //     },
  //   );
  // }

  Future getallVendors() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Vendors').get();

    for (int i = 0; i < querySnapshot.docs.length; i++) {
      markers.add(
        Marker(
            markerId: MarkerId(querySnapshot.docs[i]['company']),
            position: LatLng(querySnapshot.docs[i]['location'].latitude,
                querySnapshot.docs[i]['location'].longitude),
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                querySnapshot.docs[i]['category'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Contact Vendor" +
                                    querySnapshot.docs[i]['contactno'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            infoWindow: InfoWindow(title: querySnapshot.docs[i]['category']),
            icon: BitmapDescriptor.defaultMarker),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getallVendors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: source,
            zoom: 12,
          ),
          markers: Set<Marker>.from(markers)
          // Marker(
          //     markerId: MarkerId("src"),
          //     position: source,
          //     draggable: true,
          //     onDragEnd: (value) {
          //       //value is new position if dragged
          //     },
          //     icon: BitmapDescriptor.defaultMarker),
          // Marker(
          //     markerId: MarkerId("Dest"),
          //     position: dest,
          //     draggable: true,
          //     onDragEnd: (value) {
          //       //value is new position if dragged
          //     },
          //     icon: BitmapDescriptor.defaultMarker)
          ),
    );
  }
}
