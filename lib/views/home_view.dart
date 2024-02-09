import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/controllers/navbar_controller.dart';
import 'package:roadmap_app/views/roadmap_view.dart';
import 'package:roadmap_app/views/widgets/navbar.dart';
import 'package:roadmap_app/views/widgets/reoadmap_tile.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        bottomNavigationBar: const Navbar(),
        body: PageView(
          controller: ref.watch(navbarProvider.notifier).pageController,
          children: const [
            RoadmapView(),
            Placeholder(),
            Placeholder(),
          ],
        ));
  }
}
