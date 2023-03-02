import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_albums/features/albums/~graphql/__generated__/albums.query.graphql.dart';
import 'package:flutter_graphql_albums/styles/styles.dart';

class AlbumsRowItem extends StatelessWidget {
  const AlbumsRowItem({
    super.key,
    required this.title,
    required this.description,
    this.onPressed,
  });

  final String title;
  final String description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 16,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              'https://www.billboard.com/wp-content/uploads/media/greatest-of-all-time-albumcovers-goat-billboard-650.jpg?w=650',
              fit: BoxFit.cover,
              width: 76,
              height: 76,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.productRowItemName,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  Text(
                    description,
                    style: Styles.productRowTotal,
                  )
                ],
              ),
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            child: const Icon(
              CupertinoIcons.plus_circled,
              semanticLabel: 'Add',
            ),
          )
        ],
      ),
    );

    // if (lastItem!) {
    //   return row;
    // }

    return Column(
      children: [
        row,
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 16,
          ),
          child: Container(
            height: 1,
            color: CupertinoColors.activeOrange,
          ),
        )
      ],
    );
  }
}
