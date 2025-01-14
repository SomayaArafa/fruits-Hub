import 'package:flutter/material.dart';
import 'package:lastfruitapp/features/auth/presentation/views/widgets/login_view_body.dart';
import '../../../../core/wigets/custom_appbar.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل دخول'),
      body: const LoginViewBody(),
    );
  }

}
