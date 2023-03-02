import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeIndicator extends StatelessWidget {
  String os;

  AdaptativeIndicator({
    required this.os,
  });

  @override
  Widget build(BuildContext context) {
    if (this.os == 'android') {
      return CircularProgressIndicator();
    }
    return CupertinoActivityIndicator();
  }
}
