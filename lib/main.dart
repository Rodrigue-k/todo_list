import 'package:flutter/material.dart';
import 'package:todo_list/emplois.dart';

import 'package:todo_list/notes.dart';
import 'package:todo_list/taches.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.yellow,
          scaffoldBackgroundColor: const Color.fromARGB(255, 247, 243, 243)),
      debugShowCheckedModeBanner: false,
      title: 'Taches',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final List pages = [
    const NotePage(),
    const TachePage(),
    const EmploisPage(),
  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[pageIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.3))),
          child: NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  pageIndex = index;
                });
              },
              selectedIndex: pageIndex,
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.book_outlined), label: "Note"),
                NavigationDestination(
                    icon: Icon(Icons.verified_outlined), label: "Taches"),
                NavigationDestination(
                    icon: Icon(Icons.calendar_view_week_outlined),
                    label: "Emplois du temps")
              ]),
        ));
  }
}
