import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget productItem() {
  return SizedBox(
    width: double.infinity,
    height: 241.h,
    child: ListView.builder(
      padding: EdgeInsets.only(),
      itemCount: 10,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.amber,
          child: Column(children: [Container(width: 164.w)]),
        );
      },
    ),
  );
}
