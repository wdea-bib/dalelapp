import 'package:dalelapp/core/database/cache/cache_helper.dart';
import 'package:dalelapp/core/function/navigate.dart';
import 'package:dalelapp/core/services/services_locator.dart';
import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashViews extends StatefulWidget {
  const SplashViews({super.key});

  @override
  State<SplashViews> createState() => _SplashViewsState();
}

class _SplashViewsState extends State<SplashViews> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      delayednavigation(context, "/signUp");
    } else {
      delayednavigation(context, "/onBoarding");
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

void delayednavigation(context, path) {
  Future.delayed(Duration(seconds: 3), () {
    CustomReplacementNavigate(context, path);
  });
}
