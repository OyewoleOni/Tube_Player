import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tube_player/views/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tube Player',
      theme: ThemeData.dark(),
      home: StartPage(),
    );
  }
}
