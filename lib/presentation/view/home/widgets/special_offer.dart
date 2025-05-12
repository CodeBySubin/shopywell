import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants/constants.dart';

Widget specialOffer() {
  return Card(
    elevation: 0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 10.w,
        children: [
          Image.asset(height: 60.h, width: 75.w, AppImages.specialOffer),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 12,
                  children: [
                    Text(
                      "Special Offers",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        height: 20 / 16,
                        letterSpacing: 0,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColor.grey
                        )
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('😱', style: TextStyle(fontSize: 20)),
                      )

                    )
                  ],
                ),
                Text(
                  "We make sure you get the\n offer you need at best prices",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                    height: 16 / 12,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
