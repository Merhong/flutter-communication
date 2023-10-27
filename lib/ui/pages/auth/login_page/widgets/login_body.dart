import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/move.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/pages/auth/login_page/widgets/login_form.dart';
import 'package:flutter_blog/ui/widgets/custom_elavated_button.dart';
import 'package:flutter_blog/ui/widgets/custom_logo.dart';
import 'package:flutter_blog/ui/widgets/custom_text_button.dart';

class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const SizedBox(height: xlargeGap),
          const CustomLogo("Blog"),
          const SizedBox(height: largeGap),
          LoginForm(),
          CustomElevatedButton(
            text: "로그인",
            funPageRoute: () {
              // print("username : ${LoginForm.username.text}");
              // print("password : ${LoginForm.password.text}");
              // print("username : ${loginForm.username.text}");
              // print("password : ${loginForm.password.text}");
              // print("username : ${username.text}");
              // print("password : ${password.text}");
            },
          ),
          CustomTextButton(
            "회원가입 페이지로 이동",
                () {
              Navigator.pushNamed(context, Move.joinPage);
            },
          ),
        ],
      ),
    );
  }
}