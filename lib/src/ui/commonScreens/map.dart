import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/adaptiveCircularProgress.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  GoogleMapController _controller;
  BitmapDescriptor customIcon;
  final Map<String, Marker> _markers = {};
  String address;
  bool searching = false;
  var currentLocation = Position();

  createMarker(context) {
    if (customIcon == null) {
      ImageConfiguration configuration = createLocalImageConfiguration(
        context,
        size: Size.square(50.0),
      );
      BitmapDescriptor.fromAssetImage(
        configuration,
        'assets/images/location128.png',
      ).then((icon) {
        setState(() {
          customIcon = icon;
        });
      });
    }
  }

  Future<String> _getAddress(Position pos) async {
    setState(() {
      searching = true;
    });
    List<Placemark> placeMarks = await Geolocator()
        .placemarkFromCoordinates(pos.latitude, pos.longitude);
    if (placeMarks != null && placeMarks.isNotEmpty) {
      final Placemark pos = placeMarks[0];
//      print(':::::::::::::' + pos.thoroughfare + ', ' + pos.locality);
      address = pos.thoroughfare + ', ' + pos.locality;
      return address;
    }
    setState(() {
      searching = false;
    });
    return "";
  }

  Future<void> _getLocation() async {
    setState(() {
      searching = true;
    });
    currentLocation = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    print("BeforeRemove:" +
        'lat :' +
        currentLocation.latitude.toString() +
        '-long :' +
        currentLocation.longitude.toString());
    _getAddress(currentLocation);
    setState(() {
      searching = false;
    });
    setState(() {
      _markers.clear();
      final marker = Marker(
        draggable: true,
        onDragEnd: ((value) {
          setState(() {
            searching = true;
          });
          currentLocation = Position(
            latitude: value.latitude,
            longitude: value.longitude,
          );
          _getAddress(currentLocation);
          setState(() {
            searching = false;
          });
        }),
        icon: customIcon,
        onTap: () {
          print('AfterRemove :' +
              'lat :' +
              currentLocation.latitude.toString() +
              '-long :' +
              currentLocation.longitude.toString() +
              '-address :' +
              address);
        },
        markerId: MarkerId("curr_loc"),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(title: 'موقعى'),
      );
      setState(() {
        _markers["Current Location"] = marker;
      });
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(currentLocation.latitude, currentLocation.longitude),
            zoom: 20,
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    _getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    createMarker(context);
    MediaQueryData screen = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  37.43296265331129,
                  -122.08832357078792,
                ),
                zoom: 11.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                setState(() {
                  _controller = controller;
                });
              },
              markers: _markers.values.toSet(),
              zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
            ),
            searching
                ? Positioned(
                    bottom: 60.0,
                    left: screen.size.width * 0.5 - 15.0,
                    child: AdaptiveCircularProgress(),
                  )
                : Positioned(
                    bottom: 40.0,
                    left: 0.0,
                    right: 0.0,
                    child: OrangeJuiceButton(
                      title: 'حدد موقعك على الخريه',
                      buttonColor: Colors.orange,
                      onTap: () async {
                        setState(() {
                          currentLocation = Position();
                        });
                        await _getLocation();
                        await _getAddress(currentLocation);
                      },
                    ),
                  ),
            Positioned(
              top: 20.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                height: 60.0,
                width: screen.size.width > 400.0 ? 400.0 : screen.size.width,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 20.0,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.filter,
                      color: Colors.blue,
                      size: 20.0,
                    ),
                    Container(
                      height: 50,
                      width: 1.0,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 5.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'ابحث عن موقع محدد',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
