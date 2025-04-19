import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/get_started/get_started.dart';
import 'package:shopywell/view/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title:StringConstants.appName,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.montserratTextTheme(),
          ),
          home: child,
        );
      },
      child: const Home(),
    );
  }
}
