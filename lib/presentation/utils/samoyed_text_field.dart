import 'package:flutter/material.dart';

class SamoyedTextField extends StatelessWidget {
  const SamoyedTextField(
      {super.key,
      required this.controller,
      this.hintText = "",
      this.obscureText = false});

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  factory SamoyedTextField.id({required TextEditingController controller}) =>
      SamoyedTextField(
        controller: controller,
        hintText: "아이디를 입력해주세요",
      );

  factory SamoyedTextField.password(
          {required TextEditingController controller}) =>
      SamoyedTextField(
        controller: controller,
        hintText: "비밀번호를 입력해주세요",
        obscureText: true,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      padding: const EdgeInsets.only(left: 20.0),
      child: TextFormField(
        cursorColor: Colors.black,
        controller: controller,
        style: const TextStyle(fontSize: 18),
        obscureText: obscureText,
        obscuringCharacter: '*',
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
