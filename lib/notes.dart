import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  String getFormattedDate() {
    final now = DateTime.now();
    return DateFormat('dd/MM/yyyy HH:mm').format(now);
  }

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
              "Notes",
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
                      minTileHeight: 100.0,
                      title: Text(
                        'element $index',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Description de la note $index",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        getFormattedDate(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w100, color: Colors.grey),
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
          childCount: 0,
        )),
      ],
    );
  }
}
