import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopywell/core/constants.dart';

Widget circledIcon({void Function()? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 10.w,
    children: [
      socialIcon(iconPath: AppIcons.apple, onTap: () {}),
      socialIcon(iconPath: AppIcons.google, onTap: () {}),
      socialIcon(iconPath: AppIcons.facebook, onTap: () {}),
    ],
  );
}

Widget socialIcon({required String iconPath, required VoidCallback onTap}) {
  return GestureDetector(onTap: onTap, child: SvgPicture.asset(iconPath));
}
