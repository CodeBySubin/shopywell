import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/core/routes/routes.dart';
import 'package:shopywell/presentation/viewmodels/home_viewmodel.dart';

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
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<HomeViewmodel>(
              create: (_) => HomeViewmodel(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: StringConstants.appName,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: GoogleFonts.montserratTextTheme(),
            ),
            initialRoute: AppRoutes.splash,
            onGenerateRoute: RouteGenerator.generateRoute,
          ),
        );
      },
    );
  }
}
