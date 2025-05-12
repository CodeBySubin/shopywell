import 'package:flutter/material.dart';
import 'package:shopywell/presentation/view/home/widgets/appbar.dart';
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
