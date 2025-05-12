import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_details_widget.dart';
import 'package:shopywell/presentation/view/profile/widget/profile_fields.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileDetailsWidget(
      title: StringConstants.personalDetails,
      divider: true,
      fields: [
        ProfileField(
          textfieldName: StringConstants.emailAddress,
          controller: TextEditingController(text: "aashifa@gmail.com"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ProfileField(
              textfieldName:  StringConstants.password,
              readOnly: true,
              hideText: true,
              controller: TextEditingController(text: "jisjsssji"),
            ),
            SizedBox(height: 10.h),
            Text(
             StringConstants.changePassword,
              style: GoogleFonts.montserrat(
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
