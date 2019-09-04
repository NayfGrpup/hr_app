import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hr_project/login/form_login.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("LogIn"),
        centerTitle: true,
        backgroundColor: Colors.purple.shade700,
      ),
      body: Stack(
        children: <Widget>[
            Image(
                image: AssetImage(
                  'assets/login.png',
                ),
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
          Center(child: FormLogIn()),
        ],
      ),
    );
  }
}
