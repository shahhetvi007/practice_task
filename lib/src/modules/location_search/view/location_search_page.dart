import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/provider.dart';
import 'location_search_widgets.dart';

class LocationSearchScreen extends ConsumerWidget {
  const LocationSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen for error messages and show a snackbar
    ref.listen(locationSearchControllerProvider.select((s) => s.errorMessage),
        (prev, next) {
      if (next != null && next.isNotEmpty) {
        print(next);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next),
            backgroundColor: Colors.redAccent,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map & Search Locations'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SearchBarField(),
          Expanded(
            child: LocationSearchListView(),
          ),
        ],
      ),
    );
  }
}
