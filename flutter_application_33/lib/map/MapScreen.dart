import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_33/map/sample/xyz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> markers = {};
  TextEditingController _date = TextEditingController();
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
              const xyz();
              // );
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      SizedBox(height: 10),
                      ListTile(
                        onTap: () {
                          print("called");
                        },
                        leading: Icon(Icons.call),
                        title: Text("Contact"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextField(
                          keyboardType: TextInputType.none,
                          controller: _date,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_today_rounded),
                            labelText: "Select Date",
                          ),
                          onTap: () async {
                            DateTime? pickDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2101));

                            if (pickDate != null) {
                              setState(() {
                                _date.text =
                                    DateFormat('dd-MM-yyyy').format(pickDate);
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Wrap(children: [
                                  AlertDialog(
                                    title: Text("Order Done Successfully 🎉"),
                                  ),
                                ]);
                              },
                            );
                          },
                          child: Text("Order Now")),
                    ],
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
          //custom marker
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
