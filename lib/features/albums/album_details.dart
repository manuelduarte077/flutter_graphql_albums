import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/features/albums/~graphql/__generated__/albums.query.graphql.dart';

class AlbumDetails extends StatelessWidget {
  const AlbumDetails({
    super.key,
    this.albumId,
  });

  final Query$getAlbums$albums$data? albumId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 50, start: 20, end: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Builder(
              builder: (context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        albumId!.user!.name!,
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        albumId!.user!.username!,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Company',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        albumId!.user!.company!.name!,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
