import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homeStart/mainScreen.dart';
import 'homeStart/splash.dart';

void main(List<String> args) {
  runApp(home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.width;
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      home: SecondPage(),
    );
  }
}
