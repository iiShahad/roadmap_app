import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/controllers/navbar_controller.dart';
import 'package:roadmap_app/views/categories_view.dart';
import 'package:roadmap_app/views/home_view.dart';
import 'package:roadmap_app/views/roadmap_view.dart';
import 'package:roadmap_app/views/widgets/navbar.dart';
import 'package:roadmap_app/views/widgets/reoadmap_tile.dart';

class MainScaffold extends ConsumerWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: ref.watch(navbarProvider.notifier).pageController,
            onPageChanged: (value) =>
                ref.read(navbarProvider.notifier).setPage(value),
            children: const [
              HomeView(),
              CategoriesView(),
              RoadmapView(),
            ],
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Navbar(),
          )
        ],
      ),
    );
  }
}
