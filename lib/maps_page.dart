import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'components/drawer.dart';

class MapsPage extends StatefulWidget{
  MapsPage({super.key});
  @override

  _MapsPageState createState() => _MapsPageState();

}

class _MapsPageState extends State<MapsPage>{

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: AppDrawer(),

      appBar: AppBar(
        title: const Text('Maps'),
        backgroundColor: const Color(0xFF479FD5),
      ),

    );
}
}