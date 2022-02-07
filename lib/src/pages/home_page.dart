import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/src/models/albums.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String getAlbums = """ 
    query getAlbums {
      albums(options: { paginate: { page: 1, limit: 5 } }) {
        data {
          id
          title
          user {
            name
            username
            email
          }
        }
      }
    }
   """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(Album.getAlbums),
        ),
        builder: (QueryResult result, {fetchMore, refetch}) {
          return Container();
        },
      ),
    );
  }
}
