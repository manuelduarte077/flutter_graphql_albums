import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/src/models/albums.dart';

class AlbumDetails extends StatelessWidget {
  final Album? albumsD;

  // Contructor, se requiere un objeto de tipo HomePage
  const AlbumDetails({
    Key? key,
    this.albumsD,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 50, start: 20, end: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Album Details',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
              child: Builder(builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Album Name: ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
