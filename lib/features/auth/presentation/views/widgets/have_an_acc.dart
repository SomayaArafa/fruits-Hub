import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lastfruitapp/features/auth/presentation/views/login_view.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../signup_view.dart';
class HaveAnAcc extends StatelessWidget {
  const HaveAnAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(
                text:'تمتلك حساب بالفعل؟',
                style:TextStyles.semiBold16.copyWith(color:const Color(0xff616A6B)),
              ),
              TextSpan(recognizer: TapGestureRecognizer()..onTap=(){
                Navigator.pop(context);
              },
                  text: 'تسجيل دخول',
                  style: TextStyles.semiBold16.copyWith(color: AppColors.primaryColor)
              )
            ]
        ));
  }
}

