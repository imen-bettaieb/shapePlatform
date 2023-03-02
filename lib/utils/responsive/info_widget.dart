import 'package:flutter/material.dart';
import 'package:shape_platform/utils/responsive/device_info.dart';
import 'package:shape_platform/utils/responsive/device_type.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  const InfoWidget({required Key key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      var mediaQueryData = MediaQuery.of(context);
      var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localWidth: constrains.maxWidth,
          localHeight: constrains.maxHeight);
      return builder(context, deviceInfo);
    });
  }
}
