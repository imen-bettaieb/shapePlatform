import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shape_platform/ui/auth/widgets/bg.dart';
import 'package:shape_platform/ui/auth/widgets/logo.dart';

import '../widgets/card.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Logo(),
              SizedBox(
                height: 30,
              ),
              LoginScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
