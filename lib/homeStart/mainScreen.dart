import 'package:flutter/material.dart';
import 'package:treed/models/UI_Components.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  bool darkOrLight = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: SwitchListTile(
            value: !darkOrLight,
            onChanged: (value) {
              setState(() {
                if (darkOrLight == true) {
                  darkOrLight = false;
                  ThemeData.dark();
                } else {
                  darkOrLight = true;
                  ThemeData.dark();
                }
              });
              print(Theme.of(context));
            },
          ),
        ),
        appBar: AppBar(
          actions: [],
          backgroundColor: Color(0xFF00B6F0),
        ),
        body: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              print(deviceInfo.deviceType);
              print(deviceInfo.localHeight);
              print(deviceInfo.localWidth);
              print(deviceInfo.orientation);
              print(deviceInfo.screenHeight);
              print(deviceInfo.screenWidth);
              return Padding(
                padding: EdgeInsets.all(50),
                child: Container(
                  width: deviceInfo.localWidth,
                  height: deviceInfo.localHeight,
                  color: Colors.amberAccent,
                  child: Text('data'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
