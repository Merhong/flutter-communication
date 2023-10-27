import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/move.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/_core/utils/validator_util.dart';
import 'package:flutter_blog/data/dtos/user_request.dart';
import 'package:flutter_blog/data/stores/session_store.dart';
import 'package:flutter_blog/ui/widgets/custom_auth_text_form_field.dart';
import 'package:flutter_blog/ui/widgets/custom_elavated_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Ref를 사용하려면 StatelessWidget에서 ConsumerWidget으로 변경하여야 한다.
class LoginForm extends ConsumerWidget {
  LoginForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomAuthTextFormField(
            text: "Username",
            obscureText: false,
            funValidator: validateUsername(),
            controller: username,
          ),
          const SizedBox(height: mediumGap),
          CustomAuthTextFormField(
            text: "Password",
            obscureText: true,
            funValidator: validatePassword(),
            controller: password,
          ),
          const SizedBox(height: largeGap),
        ],
      ),
    );
  }
}