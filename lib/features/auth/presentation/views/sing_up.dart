import 'package:dalelapp/core/utils/app_strings.dart';
import 'package:dalelapp/core/widgets/custom_btn.dart';
import 'package:dalelapp/features/auth/presentation/widgets/already_have_account.dart';
import 'package:dalelapp/features/auth/presentation/widgets/custom_textfiled.dart';
import 'package:dalelapp/features/auth/presentation/widgets/termsandconditonWidget.dart';

import 'package:dalelapp/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpViews extends StatelessWidget {
  const SignUpViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),

            SliverToBoxAdapter(
              child: CustomTextFiled(labletext: AppStrings.fristName),
            ),
            SliverToBoxAdapter(
              child: CustomTextFiled(labletext: AppStrings.lastName),
            ),
            SliverToBoxAdapter(
              child: CustomTextFiled(labletext: AppStrings.emailAddress),
            ),
            SliverToBoxAdapter(
              child: CustomTextFiled(labletext: AppStrings.password),
            ),
            SliverToBoxAdapter(child: TermsAndconditonWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 88)),

            SliverToBoxAdapter(
              child: CustomBtn(onPressed: () {}, text: AppStrings.next),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),

            SliverToBoxAdapter(
              child: HaveAnAcountWidget(
                text1: AppStrings.alreadyHaveAnAccount,

                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
