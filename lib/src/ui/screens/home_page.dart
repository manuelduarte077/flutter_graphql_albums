import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_graphql_albums/src/controller/album_controller.dart';
import 'package:flutter_graphql_albums/src/models/albums.dart';
import 'package:flutter_graphql_albums/src/ui/screens/album_details.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AlbumController _con = AlbumController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(Album.getAlbums),
          variables: const {
            'page': 1,
            'limit': 10,
          },
        ),
        builder: (QueryResult result, {fetchMore, refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final albums = result.data!['albums']['data'] as List<dynamic>;

          // print(albumUsers);

          return ListView.builder(
            itemCount: albums.length,
            itemBuilder: (context, index) {
              final album = albums[index]["title"];
              final userName = albums[index]["user"]["name"];
              final company = albums[index]["user"]["company"]["name"];

              return Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                elevation: 0,
                color: Colors.red[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: Text(
                        '$album',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text('$userName - $company'),
                      leading: const Icon(Icons.music_note),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<Route>(
                                builder: (context) => const AlbumDetails(),
                              ),
                            );
                          },
                          child: const Icon(Icons.arrow_forward),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.favorite, color: Colors.red),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
