import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/controllers/navbar_controller.dart';
import 'package:roadmap_app/palette.dart';

class Navbar extends ConsumerWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(15),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.navbarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Tab 1
          GestureDetector(
            onTap: () {
              ref.read(navbarProvider.notifier).setPage(0);
            },
            child: Icon(Icons.home,
                size: 30,
                color: ref.watch(navbarProvider) == 0
                    ? Palette.primaryColor
                    : Palette.darkGrey),
          ),
          //Tab 2
          GestureDetector(
            onTap: () {
              ref.read(navbarProvider.notifier).setPage(1);
            },
            child: Icon(Icons.category,
                size: 30,
                color: ref.watch(navbarProvider) == 1
                    ? Palette.primaryColor
                    : Palette.darkGrey),
          ),
          //Tab 3
          GestureDetector(
            onTap: () {
              ref.read(navbarProvider.notifier).setPage(2);
            },
            child: Icon(Icons.settings,
                size: 30,
                color: ref.watch(navbarProvider) == 2
                    ? Palette.primaryColor
                    : Palette.darkGrey),
          )
        ],
      ),
    );
  }
}
