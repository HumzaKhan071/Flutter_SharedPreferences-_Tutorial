import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefances/Screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: size.width,
              child: TextField(
                controller: _email,
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              child: TextField(
                controller: _password,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () async {
                final SharedPreferences shared_prefances =
                    await SharedPreferences.getInstance();

                shared_prefances.setString("email", _email.text);
                Get.to(Home());
              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Login"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
