import 'package:flutter/material.dart';
import 'package:shopywell/core/constants/constants.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
          Image.asset(
            width: 250,
           AppImages.logo,
          ),
      ),
    );
  }
}