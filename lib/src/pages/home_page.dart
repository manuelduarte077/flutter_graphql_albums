import 'package:flutter/material.dart';
import 'package:flutter_graphql_albums/src/models/albums.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      body: Query(
        options: QueryOptions(document: gql(Album.getAlbums), variables: {
          'page': 1,
          'limit': 10,
        }),
        builder: (QueryResult result, {fetchMore, refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          List albums = result.data?['albums']['data'];

          // print(albumUsers);

          return ListView.builder(
            itemCount: albums.length,
            itemBuilder: (context, index) {
              final album = albums[index]["title"];

              return ListTile(
                title: Text(album),
              );
            },
          );
        },
      ),
    );
  }
}
