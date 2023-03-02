import 'package:flutter/material.dart';

class AlbumDetails extends StatelessWidget {
  const AlbumDetails({
    super.key,
    required this.albumId,
  });

  final String albumId;

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
            Padding(
              padding:
                  const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
              child: Builder(builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    Text(
                      albumId,
                      style: const TextStyle(fontSize: 18),
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
