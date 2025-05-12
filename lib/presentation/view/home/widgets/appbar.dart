import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopywell/core/constants/constants.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    forceMaterialTransparency: true,
        leading:Container(
          margin: EdgeInsets.only(left: 10.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.textFieldFill
          ),
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AppIcons.menu),
          ) ,
        ),
        centerTitle: true,
        title: Image.asset(
          AppImages.logo,
          width: 97.11.w,
          height: 31.99.h,
          fit: BoxFit.contain,
        ),
        actionsPadding: EdgeInsets.only(right: 20.w),
        actions: [
          ClipRect(
            child: Image.asset(
              AppImages.user,
            ),
          )
        ],
      );
}