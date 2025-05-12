import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetailsWidget extends StatelessWidget {
  final String title;
  final List<Widget> fields;
  final bool divider;
  const ProfileDetailsWidget({
    super.key,
    required this.title,
    required this.fields,
    this.divider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24.h,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
        ...fields,
        divider ? Divider() : Container(),
      ],
    );
  }
}
