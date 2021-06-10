import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map2U/src/data/shopData.dart';
import 'package:map2U/src/data/shopModel.dart';
import 'dart:async';

// class GMap extends StatelessWidget {
//   final List<ShopModel> shop;
//   static String routeName = "/map";

//   const GMap({Key key, this.shop}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

class GMap extends StatefulWidget {
  static String routeName = "/map";
  GMap({Key key}) : super(key: key);
  @override
  _GMap createState() => _GMap();
}

class _GMap extends State<GMap> {
  Completer<GoogleMapController> _controller = Completer();
  // static final List<ShopModel> shop;
  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(37.427, -122.085), zoom: 14.45);
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.18832357078792),
      tilt: 59.440717697143555,
      zoom: 19.1519);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _goToThere, label: Text("Go!"), icon: Icon(Icons.tour)),
    );
  }

  Future<void> _goToThere() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
