import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/viewmodels/home_viewmodel.dart';

Widget slider() {
  return Consumer<HomeViewmodel>(
    builder: (BuildContext context, viewModel, Widget? child) {
      return Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) => viewModel.updateIndex(index),
              autoPlay: true,
              viewportFraction: 1,
            ),
            items:
                viewModel.imgList
                    .map(
                      (item) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(item),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )
                    .toList(),
          ),
          DotsIndicator(
            decorator: DotsDecorator(
              spacing: EdgeInsets.symmetric(vertical: 10.h, horizontal: 3),
              activeSize: Size(11.w, 11.h),
              activeColor: AppColor.primaryColor,
            ),
            dotsCount: viewModel.imgList.length,
            position: viewModel.sliderIndex,
          ),
        ],
      );
    },
  );
}
