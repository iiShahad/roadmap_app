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
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.navbarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              ref.read(navbarProvider.notifier).setPage(0);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home,
                    color: ref.watch(navbarProvider) == 0
                        ? Palette.primaryColor
                        : Palette.darkGrey),
                Text(
                  "Home",
                  style: Palette.subtitle.copyWith(
                      color: ref.watch(navbarProvider) == 0
                          ? Palette.primaryColor
                          : Palette.darkGrey),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(navbarProvider.notifier).setPage(1);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.category,
                    color: ref.watch(navbarProvider) == 1
                        ? Palette.primaryColor
                        : Palette.darkGrey),
                Text("Categories",
                    style: Palette.subtitle.copyWith(
                        color: ref.watch(navbarProvider) == 1
                            ? Palette.primaryColor
                            : Palette.darkGrey)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
