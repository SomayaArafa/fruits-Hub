import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lastfruitapp/constants.dart';
import 'package:lastfruitapp/core/services/shared_prefrences_singleton.dart';
import 'package:lastfruitapp/features/auth/presentation/views/login_view.dart';
import 'package:lastfruitapp/features/on_boarding/presentation/views/on_boarding_view.dart';

import '../../../../../core/utils/app_images.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
 excuteNavigation();
    super.initState();
  }

  void excuteNavigation() {
    bool isOnBoardingViewSeen=Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3),(){
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      }
      else{
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashBottom,fit: BoxFit.fill,)

      ],
    );
  }
}
