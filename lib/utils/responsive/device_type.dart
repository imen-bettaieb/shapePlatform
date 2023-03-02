import 'package:flutter/material.dart';

DeviceType getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }
  if (width >= 600) {
    return DeviceType.tablet;
  } else {
    return DeviceType.mobile;
  }
}

enum DeviceType { mobile, tablet }
