import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../location_search/models/models.dart';
import '../provider/provider.dart';

class MapScreen extends ConsumerStatefulWidget {
  final LocationPlace selectedLocation;

  const MapScreen({
    super.key,
    required this.selectedLocation,
  });

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    // We derive state from the selectedLocation passed via route extra
    final state = ref.watch(mapViewControllerProvider(widget.selectedLocation));
    final location = state.selectedLocation;
    final target = LatLng(location.coordinates.latitude, location.coordinates.longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: target,
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: MarkerId(location.placeId),
            position: target,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            // Requirement: no info window
            infoWindow: InfoWindow.noText,
          ),
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
