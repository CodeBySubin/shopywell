import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar commonAppbar({
  required String title,
  required BuildContext context,
  List<Widget>? actions,
}) {
  return AppBar(
    forceMaterialTransparency: true,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
      ),
    ),
    actions: actions,
  );
}
