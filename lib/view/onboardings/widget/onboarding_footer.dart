import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants.dart';

Widget onboardingFooter(
  BuildContext context,
  int currentIndex,
  int pagesLength,
  Function(int) setIndex,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child:
                currentIndex == 0
                    ? const SizedBox()
                    : TextButton(
                      onPressed: () {
                        setIndex(currentIndex - 1);
                      },
                      child: Text(
                        StringConstants.preview,
                        style: TextStyle(
                          color: AppColor.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
          ),
        ),

        DotsIndicator(
          dotsCount: pagesLength,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(25.0, 9.0),
            activeColor: Colors.black,
            color: AppColor.grey,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),

        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                if (currentIndex < pagesLength - 1) {
                  setIndex(currentIndex + 1);
                } else {
                  print("Get Started Clicked");
                }
              },
              child: Text(
                currentIndex == pagesLength - 1
                    ? StringConstants.getStarted
                    : StringConstants.next,
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
