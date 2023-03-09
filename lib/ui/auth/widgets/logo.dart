import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_platform/utils/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo/shape.png'),
            width: 170,
            //height: 0,
          ),
          /* SizedBox(
            width: 20,
            height: 20,
          ),*/
          Text(
            'Start Taking Control of Your Career',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: yellow,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Gain practical experience, mentorship, and guidance',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: darkblue,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'you need to start your new career',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: darkblue,
            ),
          )
        ],
      ),
    );
  }
}
