import 'package:flutter/material.dart';
import 'package:lastfruitapp/core/wigets/custom_appbar.dart';
import 'package:lastfruitapp/features/auth/presentation/views/widgets/signup_view_body.dart';
class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const routeName='signup';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: const SignupViewBody(),
    );
  }
}
