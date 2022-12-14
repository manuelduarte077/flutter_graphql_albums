import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/app/app.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await initHiveForFlutter();

  runApp(const MyApp());
}
