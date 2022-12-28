// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tube_player/app_styles.dart';

class StartPage extends StatelessWidget {
  // const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPageBackgroundColor,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Tube Player",
          style: kPageHeaderTextStyle,
        ),
      ),
      body: Center(
        child: Text(
          "Start Page Content..",
          style: kMediumLightText18,
        ),
      ),
    );
  }
}
