import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_graphql_albums/routes/app_router.dart';
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
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    return GraphQLProvider(
      client: getClient(),
      child: const CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: 'home',
      ),
    );
  }
}
