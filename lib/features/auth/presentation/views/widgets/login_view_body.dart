import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lastfruitapp/constants.dart';
import 'package:lastfruitapp/core/utils/app_colors.dart';
import 'package:lastfruitapp/core/wigets/custom_button.dart';
import 'package:lastfruitapp/core/wigets/custom_text_form_field.dart';
import 'package:lastfruitapp/features/auth/presentation/views/widgets/or_divider.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'dont_have_anacc_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('نسيت كلمة المرور؟', style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),),
              ],
            ),
            const SizedBox(height: 33,),
            CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
            const SizedBox(height:33 ,),
            const DontHaveAnAccWidget(),
            const SizedBox(height: 33,),
            const OrDivider(),
          ],
        ),
      ),
    );
  }
}

