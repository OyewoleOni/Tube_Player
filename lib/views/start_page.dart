// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tube_player/app_styles.dart';
import 'package:tube_player/viewcontrols/loading_indicator.dart';

import '../viewcontrols/error_indicator.dart';

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
        body: LoadingIndicator(
          LoadingText: "Loading",
        )
        // Center(
        //   child: ErrorIndicator(
        //     ErrorText:
        //         "Another Importatnt Error message appears here and it is very looooooooooooong...",
        //   ),
        // ),
        );
  }
}
