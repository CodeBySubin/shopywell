import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/authentication/widget/circled_icon.dart';
import 'package:shopywell/view/widgets/custom_button.dart';
import 'package:shopywell/view/widgets/textfield.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.forgotPassword,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 36.sp,
                  height: 43.h / 36.sp,
                ),
              ),
              SizedBox(height: 30.h),
              customTextField(
                fillColor: AppColor.textFieldFill,
                isFilled: true,
                hintText: StringConstants.enterEmail,
                borderColor: AppColor.textFieldDarkGrey,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppIcons.mail),
                ),
              ),
              SizedBox(height: 30.h),
              RichText(
                text: TextSpan(
                  text: '*',
                  style: GoogleFonts.montserrat(
                    color: AppColor.primaryColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: StringConstants.forgotMSG,
                      style: GoogleFonts.montserrat(
                        color: AppColor.textFieldDarkGrey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              elevatedButton(
                onPressed: () {},
                text: StringConstants.submit,
                backgroundColor: AppColor.primaryColor,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
