import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'ui/screens/album_details.dart';
import 'ui/screens/home_page.dart';

final HttpLink httpLink = HttpLink(
  'https://graphqlzero.almansi.me/api',
);

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'album': (BuildContext context) => const AlbumDetails(),
          'home': (BuildContext context) => const HomePage(),
        },
        title: 'GraphQL Albums',
        home: const HomePage(),
      ),
    );
  }
}
