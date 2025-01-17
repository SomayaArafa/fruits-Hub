import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lastfruitapp/features/auth/presentation/views/login_view.dart';
import '../../../../../constants.dart';
import '../../../../../core/services/shared_prefrences_singleton.dart';
import '../../../../../core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subTitle,
      required this.title, required this.isVisible});

  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.5,
            child: Stack(
              children: [
                Positioned.fill(
                    child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    image,
                  ),
                ),
                Visibility(visible:isVisible ,
                  child:  GestureDetector(onTap:(){
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                  } ,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text('تخط',style: TextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          title,
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              subTitle,style: TextStyles.semiBold13.copyWith(color:const Color(0xFF4E5456)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
