import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_albums/features/albums/album_details.dart';
import 'package:flutter_graphql_albums/features/albums/~graphql/__generated__/albums.query.graphql.dart';
import 'package:flutter_graphql_albums/features/home_screen.dart';
import 'package:flutter_graphql_albums/routes/error_route.dart';

class AppRouter {
  static Route onGenerateRoute<T>(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return CupertinoPageRoute<T>(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case 'album':
        return CupertinoPageRoute<T>(
          builder: (_) {
            final args = settings.arguments as Query$getAlbums$albums$data?;
            return AlbumDetails(
              albumId: args,
            );
          },
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return CupertinoPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const ErrorRoutes(),
    );
  }
}
