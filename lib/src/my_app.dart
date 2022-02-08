import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/src/pages/home_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GraphQL Albums',
        home: HomePage(),
      ),
    );
  }
}
