import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(37.7749, -122.4194); // Coordenadas del centro del mapa

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0, // Zoom inicial del mapa
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: _createMarkers(), // Método para crear marcadores
      ),
    );
  }

  Set<Marker> _createMarkers() {
    return {
      Marker(
        markerId: MarkerId('marker_1'),
        position: LatLng(37.7749, -122.4194), // Coordenadas del marcador
        infoWindow: InfoWindow(
          title: 'Ejemplo de Marcador',
          snippet: 'Descripción del marcador',
        ),
      ),
      // Puedes agregar más marcadores aquí según tus necesidades
    };
  }
}