import 'package:flutter/material.dart';

class TachePage extends StatelessWidget {
  const TachePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 80.0,
          floating: false,
          pinned: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.folder_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          ],
          flexibleSpace: const FlexibleSpaceBar(
            title: Text(
              "Taches",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            titlePadding: EdgeInsets.only(left: 15),
            centerTitle: false,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                color: Colors.white,
                elevation: 1.0,
                child: Column(
                  children: [
                    ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.square_outlined)),
                      minTileHeight: 50,
                      title: Text(
                        'element $index',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        //
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: 10,
        )),
      ],
    );
  }
}
