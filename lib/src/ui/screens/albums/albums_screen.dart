import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_albums/src/ui/screens/albums/albums_row_item.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      semanticChildCount: 4,
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
                if (index < 4) {
                  return const AlbumsRowItem();
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}
