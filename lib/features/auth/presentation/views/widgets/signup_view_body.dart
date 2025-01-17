import 'package:flutter/material.dart';
import 'package:lastfruitapp/constants.dart';
import 'package:lastfruitapp/core/wigets/custom_button.dart';
import 'package:lastfruitapp/core/wigets/custom_text_form_field.dart';
import 'package:lastfruitapp/features/auth/presentation/views/widgets/have_an_acc.dart';
import 'package:lastfruitapp/features/auth/presentation/views/widgets/terms_and_conditions.dart';
class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(children: [
          const SizedBox(height: 24,),
          const CustomTextFormField(hintText: 'الاسم كامل', textInputType: TextInputType.name),
          const SizedBox(height: 16,),
          const CustomTextFormField(hintText: 'البريد الإلكتروني', textInputType: TextInputType.emailAddress),
          const SizedBox(height: 16,),
          const CustomTextFormField(hintText: 'كلمة المرور', textInputType: TextInputType.visiblePassword,suffixIcon: Icon(
            Icons.remove_red_eye,
            color: Color(0xffC9CECF),
          ),),
          const SizedBox(height: 16),
          const TermsAndConditions(),
          const SizedBox(height: 30,),
          CustomButton(onPressed: (){}, text: 'إنشاء حساب جديد'),
          const SizedBox(height: 26),
          const HaveAnAcc(),

        ],),
      ),
    );
  }
}
