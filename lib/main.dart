import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'src/my_app.dart';

void main() async {
  runApp(MyApp());

  await initHiveForFlutter();
}
