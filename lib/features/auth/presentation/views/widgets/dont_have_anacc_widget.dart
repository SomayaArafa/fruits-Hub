
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
class DontHaveAnAccWidget extends StatelessWidget {
  const DontHaveAnAccWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(
                text:'لا تمتلك حساب ؟',
                style:TextStyles.semiBold16.copyWith(color:const Color(0xff616A6B)),
              ),
              TextSpan(
                  text: 'قم بانشاء حساب',
                  style: TextStyles.semiBold16.copyWith(color: AppColors.primaryColor)
              )
            ]
        ));
  }
}
