import 'package:flutter/material.dart';
import 'package:shopywell/presentation/view/home/home.dart';
import 'package:shopywell/presentation/view/profile/profile.dart';
import 'package:shopywell/presentation/view/splash/splash.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const Splash());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const Home());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const Profile());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No route found")),
          ),
        );
    }
  }
}
