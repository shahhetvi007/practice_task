import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/core.dart';
import '../provider/provider.dart';
import 'location_tile.dart';

class SearchBarField extends ConsumerStatefulWidget {
  const SearchBarField({super.key});

  @override
  ConsumerState<SearchBarField> createState() => _SearchBarFieldState();
}

class _SearchBarFieldState extends ConsumerState<SearchBarField> {
  late final TextEditingController _controller;
  late final Debouncer _debouncer;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _debouncer = Debouncer(milliseconds: 400);
  }

  @override
  void dispose() {
    _controller.dispose();
    _debouncer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(locationSearchControllerProvider.select((s) => s.isSearching));

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search for a location...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: isLoading
              ? const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : _controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _controller.clear();
                        ref.read(locationSearchControllerProvider.notifier).updateQuery('');
                      },
                    )
                  : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          filled: true,
          fillColor: Colors.grey[100],
        ),
        onChanged: (value) {
          _debouncer.run(() {
            ref.read(locationSearchControllerProvider.notifier).updateQuery(value);
          });
        },
      ),
    );
  }
}

class LocationSearchListView extends ConsumerWidget {
  const LocationSearchListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(locationSearchControllerProvider);

    // Permission check
    if (state.permissionStatus == LocationPermissionStatus.denied ||
        state.permissionStatus == LocationPermissionStatus.deniedForever) {
      return const Center(child: Text('Location permission is denied.\nPlease enable it in settings.'));
    }

    // Default: query empty, show nearby
    if (state.query.isEmpty) {
      if (state.isLoading) return const Center(child: CircularProgressIndicator());
      if (state.nearbyLocations.isEmpty && state.currentCoordinates != null) {
        return const Center(child: Text('No landmarks found nearby.'));
      }
      return ListView.separated(
        itemCount: state.nearbyLocations.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final place = state.nearbyLocations[index];
          return LocationTile(
            title: place.name,
            subtitle: 'Lat: ${place.coordinates.latitude}, Lng: ${place.coordinates.longitude}',
            onTap: () => context.push('/map', extra: place),
          );
        },
      );
    }

    // Suggestions state
    if (state.suggestions.isEmpty && !state.isSearching) {
      return const Center(child: Text('No results found.'));
    }

    return ListView.separated(
      itemCount: state.suggestions.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final suggestion = state.suggestions[index];
        return LocationTile(
          title: suggestion.description,
          onTap: () async {
            // Resolve details before navigation
            final place = await ref
                .read(locationSearchControllerProvider.notifier)
                .resolvePlace(suggestion.placeId);
            if (place != null && context.mounted) {
              context.push('/map', extra: place);
            }
          },
        );
      },
    );
  }
}
