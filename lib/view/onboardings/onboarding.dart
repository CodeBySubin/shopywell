import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/onboardings/widget/onboarding_footer.dart';
import 'package:shopywell/view/onboardings/widget/onboarding_header.dart';
import 'package:shopywell/view/onboardings/widget/onbording_screens.dart';

class Onboardings extends StatelessWidget {
  const Onboardings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Onboarding(
          swipeableBody: [
            onboardingPages(
              AppImages.onboarding1,
              StringConstants.onboardingTitle1,
              StringConstants.onboardingDescription1,
            ),
            onboardingPages(
              AppImages.onboarding2,
              StringConstants.onboardingTitle2,
              StringConstants.onboardingDescription2,
            ),
            onboardingPages(
              AppImages.onboarding3,
              StringConstants.onboardingTitle3,
              StringConstants.onboardingDescription3,
            ),
          ],
          startIndex: 0,
          buildHeader: (
            context,
            netDragDistance,
            pagesLength,
            currentIndex,
            setIndex,
            slideDirection,
          ) {
            return onboardingHeader(context, currentIndex, pagesLength);
          },
          buildFooter: (
            context,
            netDragDistance,
            pagesLength,
            currentIndex,
            setIndex,
            slideDirection,
          ) {
            return onboardingFooter(
              context,
              currentIndex,
              pagesLength,
              setIndex,
            );
          },
          animationInMilliseconds: 1200,
        ),
      ),
    );
  }
}
