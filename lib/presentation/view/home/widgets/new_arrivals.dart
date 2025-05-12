import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants/constants.dart';

Widget new_Arrivals() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Column(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          width: double.infinity,
          AppImages.newArrivals,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrivals",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Summer’ 25 Collections',
                      style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
                  ),
                  OutlinedButton(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              minimumSize: Size(70.w, 28.h),
              side: BorderSide(color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              spacing: 4,
              children: [
                Text(
                  StringConstants.viewAll,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
