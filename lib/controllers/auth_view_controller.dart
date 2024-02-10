import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/repositories/auth_repository.dart';

final authViewControllerProvider = Provider<AuthViewController>((ref) {
  return AuthViewController(
      authRepositoryNotifier: ref.watch(authRepositoryProvider.notifier));
});

class AuthViewController {
  final AuthRepositoryNotifier _authRepositoryNotifier;
  AuthViewController({required AuthRepositoryNotifier authRepositoryNotifier})
      : _authRepositoryNotifier = authRepositoryNotifier;
  final PageController _pageController = PageController();
  PageController get getPageController => _pageController;

  final TextEditingController signUpEmailController = TextEditingController();
  final TextEditingController signInEmailController = TextEditingController();

  final TextEditingController signUpPasswordController =
      TextEditingController();
  final TextEditingController signInPasswordController =
      TextEditingController();

  final TextEditingController signUpUsernameController =
      TextEditingController();

  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void pageTransition(int index) {
    if (index == 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  void dispose() {
    _pageController.dispose();
    signUpEmailController.dispose();
    signInEmailController.dispose();
    signUpPasswordController.dispose();
    signInPasswordController.dispose();
    signUpUsernameController.dispose();
  }

  void signUp() {
    print("object");
    if (signUpFormKey.currentState!.validate()) {
      _authRepositoryNotifier.signUp(signUpEmailController.text,
          signUpUsernameController.text, signUpPasswordController.text);
    }
  }

  void signIn() {
    _authRepositoryNotifier.signIn(
        signInEmailController.text, signInPasswordController.text);
  }

  void signOut() {
    _authRepositoryNotifier.signOut();
  }
}
