import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopywell/core/constants/constants.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                ClipOval(
                  child: Image.asset(width: 96.w, height: 96.h, AppImages.user),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppIcons.pen,
                        width: 14.w,
                        height: 14.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}