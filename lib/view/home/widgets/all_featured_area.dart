import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/home/widgets/icon_text.dart';

Widget allFeatured(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Text(
              'All Featured',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
            Spacer(),
            iconTextButton(icon: AppIcons.filter, text: 'Sort'),
            SizedBox(width: 5.w,),
            iconTextButton(icon: AppIcons.sort, text: 'Filter'),
          ],
        ),
      ),
      SizedBox(
        height: 100.h,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          separatorBuilder: (context, index) => SizedBox(width: 10.w),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1483985988355-763728e1935b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
                Text(
                  "Fashion",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ],
  );
}
