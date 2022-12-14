import 'package:flutter/material.dart';

class AlbumController {
  late BuildContext context;

  Future<void> init(BuildContext context) async {
    this.context = context;
  }

  void goToHome() {
    Navigator.pushReplacementNamed(context, 'album');
  }
}
