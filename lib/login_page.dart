import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Google Login Test',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(30)),
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
