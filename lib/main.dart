import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'app/app.dart';

void main() async {
  runApp(MyApp());

  await initHiveForFlutter();
}
