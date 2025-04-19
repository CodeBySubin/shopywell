import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/home/widgets/all_featured_area.dart';
import 'package:shopywell/view/home/widgets/appbar.dart';
import 'package:shopywell/view/home/widgets/icon_text.dart';
import 'package:shopywell/view/home/widgets/searchfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [searchField(), allFeatured(context)]),
        ),
      ),
    );
  }
}
