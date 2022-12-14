import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/src/ui/screens/album_details.dart';
import 'package:flutter_graphql_albums/src/ui/screens/home_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// Graphql connect
ValueNotifier<GraphQLClient> getClient() {
  final httpLink = HttpLink('https://graphqlzero.almansi.me/api');
  final link = Link.from([httpLink]);
  return ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
      defaultPolicies: DefaultPolicies(
        watchQuery: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: getClient(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: 'home',
        routes: {
          'album': (BuildContext context) => const AlbumDetails(),
        },
        home: const HomePage(),
      ),
    );
  }
}
