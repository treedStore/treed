import 'package:flutter/material.dart';
import 'package:treed/models/deviceType.dart';

// To check if device in orientation mode or not
DeviceType getDeviceType(MediaQueryData getSize) {
  Orientation orientation = MediaQueryData().orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = getSize.size.height;
  } else {
    width = getSize.size.width;
  }

  if (width >= 950) {
    return DeviceType.desktop;
  } else if (width >= 600) {
    return DeviceType.tablet;
  }

  return DeviceType.mobile;
}
