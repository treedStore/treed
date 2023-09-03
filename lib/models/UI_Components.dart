import 'package:flutter/material.dart';
import 'package:treed/models/deviceInfo.dart';
import 'package:treed/models/orientation.dart';

// We are dealing with this widget in project to take all information of device and if device is orientated or not
// to make application more responsive
class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  const InfoWidget({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var mediaQuiryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQuiryData.orientation,
          deviceType: getDeviceType(mediaQuiryData),
          screenWidth: mediaQuiryData.size.width,
          screenHeight: mediaQuiryData.size.height,
          localHeight: constraints.maxHeight,
          localWidth: constraints.maxWidth,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}
