import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopywell/core/constants.dart';
import 'package:shopywell/view/home/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('Search')),
    const Center(child: Text('Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Center(child: SvgPicture.asset(AppIcons.cart)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          buildNavItem(AppIcons.home, StringConstants.home, 0, index),
          buildNavItem(AppIcons.wishlist, StringConstants.wishlist, 1, index),
          buildNavItem(AppIcons.search, StringConstants.search, 2, index),
          buildNavItem(AppIcons.settings, StringConstants.settings, 3, index),
        ],
        currentIndex: 0,
        onTap: (int index) {
          index = index;
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}

BottomNavigationBarItem buildNavItem(
  String asset,
  String label,
  int itemIndex,
  int index,
) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      asset,
      color: index == itemIndex ? AppColor.primaryColor : null,
    ),
    label: label,
  );
}
