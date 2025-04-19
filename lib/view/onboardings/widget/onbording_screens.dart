import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants.dart';

Widget onboardingPages(String image, String title, String description) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10.h,
        children: [
          Image.asset(width: 350.w, height: 350.h, image),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
              color: AppColor.textblack,
            ),
          ),

          Text(
            description,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColor.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
