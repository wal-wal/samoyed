import 'package:flutter/material.dart';
import 'package:samoyed/presentation/utils/samoyed_button.dart';
import 'package:samoyed/presentation/utils/samoyed_text_button.dart';
import 'package:samoyed/presentation/utils/samoyed_text_field.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 150.0),
                Image.asset(
                  "assets/samoyed_logo.jpg",
                  width: 80,
                ),
                const SizedBox(height: 50.0),
                SamoyedTextField.id(controller: idController),
                const SizedBox(height: 10.0),
                SamoyedTextField.password(controller: passwordController),
                const SizedBox(height: 50.0),
                const SamoyedButton(
                  child: Text(
                    "확인",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SamoyedTextButton(onPressed: () {}, text: "회원가입을 하지 않으셨나요?"),
              ],
            ),
            SamoyedTextButton(onPressed: () {}, text: "비회원으로 이용하기"),
          ],
        ),
      ),
    );
  }
}
