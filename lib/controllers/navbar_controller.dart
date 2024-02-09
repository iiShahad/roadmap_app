import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navbarProvider = StateNotifierProvider<NavbarNotifier, int>((ref) {
  return NavbarNotifier();
});

class NavbarNotifier extends StateNotifier<int> {
  NavbarNotifier() : super(0);

  final _pageController = PageController();
  PageController get pageController => _pageController;

  void setPage(int index) {
    state = index;
    _pageController.jumpToPage(index);
  }
}
