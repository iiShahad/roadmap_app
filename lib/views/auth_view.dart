import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/controllers/auth_view_controller.dart';
import 'package:roadmap_app/palette.dart';
import 'package:roadmap_app/repositories/auth_repository.dart';
import 'package:roadmap_app/util.dart';
import 'package:roadmap_app/views/widgets/custom_tab_bar.dart';

class AuthView extends ConsumerStatefulWidget {
  const AuthView({super.key});

  @override
  ConsumerState<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends ConsumerState<AuthView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    if (mounted) {
      ref.read(authViewControllerProvider).dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Palette.backgroundColor,
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Title
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AI Roadmap Generator App', style: Palette.titleB),
                    const SizedBox(height: 10),
                    Text(
                      "Charting Your Future",
                      style: Palette.subtitle,
                    ),
                  ],
                ),
              ),

              //Auth Sheet
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Palette.navbarColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTabBar(
                      onTap: (index) => ref
                          .read(authViewControllerProvider)
                          .pageTransition(_tabController.index),
                      tabController: _tabController,
                    ),
                    Expanded(
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: ref
                            .watch(authViewControllerProvider)
                            .getPageController,
                        children: [
                          _buildSignInForm(ref),
                          _buildSignUpForm(ref),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInForm(WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 30),
        TextFormField(
          controller:
              ref.watch(authViewControllerProvider).signInEmailController,
          decoration: const InputDecoration(
            hintText: "Email",
          ),
          validator: (value) => emailValidator(value),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller:
              ref.watch(authViewControllerProvider).signInPasswordController,
          decoration: const InputDecoration(
            hintText: "Password",
          ),
          validator: (value) => passwordValidator(value),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
            child: const Text("Sign In"),
            onPressed: () {
              ref.read(authViewControllerProvider).signIn();
              // print(ref.read(authRepositoryProvider));
              // print(ref.read(authStateChangeProvider));
            })
      ],
    );
  }

  Widget _buildSignUpForm(WidgetRef ref) {
    return Form(
      key: ref.watch(authViewControllerProvider).signUpFormKey,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextFormField(
            controller:
                ref.watch(authViewControllerProvider).signUpUsernameController,
            decoration: const InputDecoration(
              hintText: "Username",
            ),
            validator: (value) => requiredValidator(value),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller:
                ref.watch(authViewControllerProvider).signUpEmailController,
            decoration: const InputDecoration(
              hintText: "Email",
            ),
            validator: (value) => emailValidator(value),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller:
                ref.watch(authViewControllerProvider).signUpPasswordController,
            decoration: const InputDecoration(
              hintText: "Password",
            ),
            validator: (value) => passwordValidator(value),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              child: const Text("Sign Up"),
              onPressed: () => ref.read(authViewControllerProvider).signUp())
        ],
      ),
    );
  }
}
