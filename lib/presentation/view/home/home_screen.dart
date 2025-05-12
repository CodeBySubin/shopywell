import 'package:flutter/material.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/home/widgets/all_featured_area.dart';
import 'package:shopywell/presentation/view/home/widgets/appbar.dart';
import 'package:shopywell/presentation/view/home/widgets/deal_day.dart';
import 'package:shopywell/presentation/view/home/widgets/new_arrivals.dart';
import 'package:shopywell/presentation/view/home/widgets/product_listing.dart';
import 'package:shopywell/presentation/view/home/widgets/searchfield.dart';
import 'package:shopywell/presentation/view/home/widgets/slider.dart';
import 'package:shopywell/presentation/view/home/widgets/special_offer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              searchField(),
              allFeatured(context),
              slider(),
              dealOfTheDayCard(
                title: "Deal of the Day",
                countdownTimerText: " 22h 55m 20s remaining",
                onPressed: () {},
                icon: Icons.alarm,
                color: AppColor.blue,
              ),
              productItem(),
              specialOffer(),
              dealOfTheDayCard(
                title: "Trending Products",
                countdownTimerText: " Last Date 29/02/22",
                onPressed: () {},
                icon: Icons.calendar_month,
                color: AppColor.pink,
              ),
              productItem(),
              new_Arrivals()
            ],
          ),
        ),
      ),
    );
  }
}
