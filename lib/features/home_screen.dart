import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_albums/features/albums/albums_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: AlbumsScreen(),
    );
  }
}
