import 'package:paint/result.dart';

import 'draw_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DrawApp());

class DrawApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Draw(),
      // initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // '/': (context) => DrawApp(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        Result.id: (context) => Result(),
      },
    );
  }
}
