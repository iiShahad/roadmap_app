import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/controllers/home_view_controller.dart';
import 'package:roadmap_app/palette.dart';
import 'package:roadmap_app/views/widgets/home_app_bar.dart';
import 'package:roadmap_app/views/widgets/roadmap_card.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                        controller:
                            ref.watch(homeViewControllerProvider).controller,
                        decoration: const InputDecoration(
                          hintText: "Search Roadmaps",
                        )),
                    ElevatedButton(
                      child: const Text("Create"),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Palette.surfaceColor,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "My Roadmaps",
                  style: Palette.titleB,
                ),
                const SizedBox(
                  height: 15,
                ),
                RoadmapCard(),
                RoadmapCard(),
                RoadmapCard(),
                RoadmapCard(),
                RoadmapCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
