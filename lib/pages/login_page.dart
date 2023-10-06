import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  final num = 10; // final은 readOnly 영역에 들어가는거야 => 읽는것만 가능한거지
  // readOnly, var 를 함께 가고 싶으면 final 만 지정하면 돼, final num = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // inset 영역 때문에
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
