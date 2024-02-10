import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Welcome Back!",
            style: Palette.subtitle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Username",
            style: Palette.titleB,
          ),
        ],
      ),
    );
  }
}
