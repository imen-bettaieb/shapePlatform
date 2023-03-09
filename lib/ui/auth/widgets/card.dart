import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shape_platform/utils/colors.dart';

class SignInCard extends StatelessWidget {
  const SignInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 25),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 10, right: 10, bottom: 30),
                child: Column(
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: darkblue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          MaterialButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/logo/google.png'),
                                          fit: BoxFit.contain,
                                        ),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Sign In With Google',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                          MaterialButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/logo/linkedin.png'),
                                          fit: BoxFit.contain,
                                        ),
                                        shape: BoxShape.rectangle),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Sign In With LinkedIn',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1.2,
                              color: Colors.grey[300],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Or',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[400]),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1.2,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: (blue60)),
                        hintText: 'Email',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: blue60,
                            //width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      obscureText: true,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: (blue60)),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: blue60,
                            //width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                color: darkblue, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: yellow,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: darkblue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Not a Shaper Yet ?',
                          style: TextStyle(color: darkblue, fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Create Your Account',
                                style: TextStyle(color: yellow, fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
