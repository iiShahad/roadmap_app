import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewControllerProvider = Provider<HomeViewController>((ref) {
  return HomeViewController();
});

class HomeViewController {
  final TextEditingController controller = TextEditingController();
}
