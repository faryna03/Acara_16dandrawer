import 'package:flutter/material.dart';

void main() => runApp(BelajarImage());

class BelajarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("belajarFlutter.com"),
      ),
      body: Image.asset('assets/images/padi.jpg'),
    ));
  }
}
