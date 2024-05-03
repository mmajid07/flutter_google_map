import 'package:flutter/material.dart';
import 'package:flutter_google_map/Provider/MapScreenProvider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MapScreenProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.7749, -122.4194),
            zoom: 12,
          ),
          markers: provider.markers,
          onMapCreated: provider.onMapCreated,
          mapType: MapType.hybrid,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          compassEnabled: true,
        ),
      ),
    );
  }
}
