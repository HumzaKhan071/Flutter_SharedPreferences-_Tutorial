import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefances/Screens/home.dart';
import 'package:shared_prefances/Screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? finalEmail;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValidation().whenComplete(() async {
      Timer(Duration(seconds: 3), () => finalEmail == null ? Login() : Home());
    });
    super.initState();
  }

  Future getValidation() async {
    final SharedPreferences shared_prefances =
        await SharedPreferences.getInstance();

    var obtainedEmail = shared_prefances.getString("email");
    setState(() {
      finalEmail = obtainedEmail;
    });

    print(finalEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Container(
            child: Text("Humza Khan"),
          ),
        ),
      ),
    );
  }
}
