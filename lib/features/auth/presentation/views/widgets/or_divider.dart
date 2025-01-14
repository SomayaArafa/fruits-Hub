import 'package:flutter/material.dart';
import 'package:lastfruitapp/core/utils/app_text_styles.dart';
class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
        SizedBox(width: 18,),
        Text('أو',style: TextStyles.semiBold16,textAlign: TextAlign.center,),
        SizedBox(width: 18,),
        Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),


      ],
    );
  }
}
