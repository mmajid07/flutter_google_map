import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreenProvider with ChangeNotifier{
  GoogleMapController? mapController;
  Location location=Location();
Set<Marker> markers={};

Future<void> getLocation() async{
  final userLocation=await location!.getLocation();
  markers.clear();
  markers.add(Marker(
      position: LatLng(userLocation.latitude!, userLocation.longitude!),
      infoWindow: InfoWindow(title: "Your Location"),
      markerId: MarkerId("marker1")));
}

void onMapCreated(GoogleMapController controller)async{
  mapController=controller;
   await getLocation();
  notifyListeners();
}

}