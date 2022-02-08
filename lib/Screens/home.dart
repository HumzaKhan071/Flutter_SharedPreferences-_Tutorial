import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefances/Screens/login.dart';
import 'package:shared_prefances/Screens/splashScree.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text("No way Home $finalEmail"),
              ),
              InkWell(
                onTap: () async {
                  final SharedPreferences shared_prefances =
                      await SharedPreferences.getInstance();

                  shared_prefances.remove("email");

                  Get.to(Login());
                },
                child: Container(
                  height: 40,
                  width: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Remove Credential"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
