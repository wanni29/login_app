import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;

  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. 리턴
          // null 리턴 -> 유효성검사 통과
          // 메시지 리턴 -> 유효성검사 실패
          controller: textController,
          validator: validate,
          obscureText: isPassword, // 비밀번호 *** 이렇게 가려주는 효과
          decoration: InputDecoration(
            suffixIcon:
                Icon(Icons.accessibility_new_outlined, color: Colors.red),
            hintText: "Enter $text",
            // css에서 place holder와 같은 기능
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
