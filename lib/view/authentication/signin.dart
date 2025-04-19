import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/authentication/widget/circled_icon.dart';
import 'package:shopywell/view/widgets/custom_button.dart';
import 'package:shopywell/view/widgets/textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                StringConstants.welcomeBack,
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
                hintText: StringConstants.password,
                borderColor: AppColor.textFieldDarkGrey,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppIcons.person),
                ),
              ),
              SizedBox(height: 30.h),

              customTextField(
                fillColor: AppColor.textFieldFill,
                isFilled: true,
                hintText: StringConstants.userOrEmail,
                borderColor: AppColor.textFieldDarkGrey,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppIcons.lock),
                ),
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: textButton(
                  text: StringConstants.forgotPassword,
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 30.h),

              elevatedButton(
                onPressed: () {},
                text: StringConstants.login,
                backgroundColor: AppColor.primaryColor,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 35.h),

              Center(
                child: textButton(
                  text: StringConstants.continueWith,
                  style: TextStyle(
                    color: AppColor.textFieldDarkGrey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.h),

              circledIcon(),
              SizedBox(height: 30.h),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: StringConstants.createAnAccount,
                    style: GoogleFonts.montserrat(
                      color: AppColor.textFieldDarkGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(text: ' '),
                      TextSpan(
                        text: StringConstants.signUp,
                        style: GoogleFonts.montserrat(
                          decoration: TextDecoration.underline,
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
