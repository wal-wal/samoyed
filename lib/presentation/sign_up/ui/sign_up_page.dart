import 'package:flutter/material.dart';
import 'package:samoyed/presentation/utils/samoyed_button.dart';
import 'package:samoyed/presentation/utils/samoyed_text_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController pwdCheckController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 12.0,
            height: MediaQuery.of(context).size.height - 24.0,
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
                    const SizedBox(height: 20.0),
                    SamoyedTextField.password(controller: passwordController),
                    const SizedBox(height: 20.0),
                    SamoyedTextField(
                      controller: pwdCheckController,
                      hintText: "비밀번호를 한번 더 입력해주세요",
                    ),
                  ],
                ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
