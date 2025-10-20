import 'package:dalelapp/core/function/navigate.dart';

import 'package:dalelapp/features/on_boarding/presention/views/functions/on_boarding.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/custom_nav_bar.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/get_buttons.dart';
import 'package:dalelapp/features/on_boarding/presention/views/widgets/onboarding_widgetbody.dart';
import 'package:flutter/material.dart';

class OnBoardingViews extends StatefulWidget {
  const OnBoardingViews({super.key});

  @override
  State<OnBoardingViews> createState() => _OnBoardingViewsState();
}

class _OnBoardingViewsState extends State<OnBoardingViews> {
  final PageController _controller = PageController(initialPage: 0);
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 40),
              Customnavbar(
                onTap: () {
                  onBoardingVisited();

                  CustomReplacementNavigate(context, "/signUp");
                },
              ),
              OnboardingWidgetbody(
                onPageChanged: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(height: 90),
              GetButtons(currentIndex: currentindex, controller: _controller),

              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
