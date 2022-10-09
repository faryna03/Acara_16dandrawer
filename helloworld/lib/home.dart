import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const home());

class home extends StatelessWidget {
  const home({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('My Page!',
            style: TextStyle(
                color: Color.fromARGB(255, 241, 179, 155),
                fontWeight: FontWeight.w500,
                fontSize: 30)),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 187, 139),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => MyApp());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => MyApp());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
