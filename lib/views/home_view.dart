import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/controllers/home_view_controller.dart';
import 'package:roadmap_app/palette.dart';
import 'package:roadmap_app/views/widgets/roadmap_card.dart';
import 'package:roadmap_app/views/widgets/rounded_input.dart';
import 'package:roadmap_app/views/widgets/rounded_button.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Palette.backgroundColor,
          elevation: 0,
          scrolledUnderElevation: 0.0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    RoundedInput(
                        controller:
                            ref.watch(homeViewControllerProvider).controller,
                        label: "Create a new Roadmap"),
                    RoundedButton(
                      label: "Create",
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
