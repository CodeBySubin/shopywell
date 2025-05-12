import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants/constants.dart';

Widget onboardingHeader(
  BuildContext context,
  int currentIndex,
  int pagesLength,
) {
  // This widget is used to display the header of the onboarding screen.
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: "${currentIndex + 1}",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.black,
              fontSize: 18.sp,

              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "/$pagesLength",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColor.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        ),
        Text(
          StringConstants.skip,
          style: TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
      ],
    ),
  );
}
