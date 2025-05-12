import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopywell/core/constants/constants.dart';
import 'package:shopywell/presentation/view/home/widgets/all_featured_area.dart';
import 'package:shopywell/presentation/view/home/widgets/appbar.dart';
import 'package:shopywell/presentation/view/home/widgets/icon_text.dart';
import 'package:shopywell/presentation/view/home/widgets/new_arrivals.dart';
import 'package:shopywell/presentation/view/home/widgets/product_listing.dart';
import 'package:shopywell/presentation/view/home/widgets/searchfield.dart';
import 'package:shopywell/presentation/view/wishlist/widget/items.dart';
import 'package:shopywell/presentation/view/wishlist/widget/product_listing.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [searchField(), ItemCount(), ProductListing()]),
      ),
    );
  }
}
