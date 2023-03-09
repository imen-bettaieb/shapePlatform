import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final msg = Text("msg");

    final username = TextField(
      controller: email,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          filled: true,
          fillColor: Color(0x00000000),
          hintStyle: TextStyle(color: (Colors.black)),
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final pass = TextField(
      controller: password,
      obscureText: true,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          filled: true,
          fillColor: Color(0x00000000),
          hintStyle: TextStyle(color: (Colors.black)),
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final loginBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.all(12),
        ),
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            SizedBox(height: 30),
            msg,
            SizedBox(height: 48),
            username,
            SizedBox(height: 20),
            pass,
            SizedBox(height: 24),
            loginBtn,
          ],
        ),
      ),
    );
  }
}
