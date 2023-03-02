import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_albums/features/albums/album_details.dart';
import 'package:flutter_graphql_albums/features/albums/~graphql/__generated__/albums.query.graphql.dart';
import 'package:flutter_graphql_albums/features/albums/albums_row_item.dart';
import 'package:flutter_graphql_albums/utils.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  @override
  Widget build(BuildContext context) {
    return Query$getAlbums$Widget(
      options: Options$Query$getAlbums(),
      builder: (result, {fetchMore, refetch}) {
        final noDataWidget = validateResult(result);

        if (noDataWidget != null) return noDataWidget;

        final data = result.parsedData!;

        // data.albums?.removeWhere((l) => l == null); // remove null values

        return CustomScrollView(
          semanticChildCount: data.albums!.data!.length,
          slivers: [
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Albums App'),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index < data.albums!.data!.length) {
                      final item = data.albums!.data![index];

                      return AlbumsRowItem(
                        title: item!.id!,
                        description: item.title!,
                        onPressed: () {
                          Navigator.push(
                            context,
                             CupertinoPageRoute(
                              builder: (context) => AlbumDetails(
                                albumId: item.id!,
                              ),
                            ),
                          );
                        },
                      );
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
