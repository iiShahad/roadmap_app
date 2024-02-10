import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          padding: const EdgeInsets.only(bottom: 100),
          itemCount: 30,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Palette.surfaceColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.category,
                      size: 50, color: Palette.backgroundColor),
                  const SizedBox(height: 10),
                  Text(
                    'Category $index',
                    style: Palette.subtitle2,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
