import 'package:flutter/material.dart';

class AlbumDetails extends StatefulWidget {
  const AlbumDetails({Key? key}) : super(key: key);

  @override
  State<AlbumDetails> createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Album Details'),
      ),
    );
  }
}
