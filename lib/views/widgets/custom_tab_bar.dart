import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  final void Function(int) onTap;
  const CustomTabBar(
      {super.key, required this.tabController, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Palette.surfaceColor,
      ),
      child: TabBar(
          onTap: onTap,
          controller: tabController,
          dividerColor: Palette.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: Palette.title2,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Palette.primaryColor,
          ),
          tabs: const [
            Tab(
              text: 'Sign In',
            ),
            Tab(
              text: 'Sign Up',
            )
          ]),
    );
  }
}
