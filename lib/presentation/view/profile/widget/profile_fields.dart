import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants/constants.dart';

class ProfileField extends StatelessWidget {
  final TextEditingController controller;
  final bool hideText;
  final String hideTextCharacter;
  final String textfieldName;
  final bool readOnly;

  const ProfileField({
    super.key,
    required this.controller,
    this.hideText = false,
    this.hideTextCharacter = "*",
    required this.textfieldName,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textfieldName,
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
        ),
        TextFormField(
          style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),
          readOnly: readOnly,
          obscuringCharacter: hideTextCharacter,
          obscureText: hideText,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColor.textFieldDarkGrey,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColor.textFieldDarkGrey,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColor.textFieldDarkGrey,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
