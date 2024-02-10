import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/models/user_model.dart';
import 'package:roadmap_app/providers/firebase_providers.dart';

final authRepositoryProvider =
    StateNotifierProvider<AuthRepositoryNotifier, UserModel?>(
        (ref) => AuthRepositoryNotifier(auth: ref.watch(firebaseAuthProvider)));

class AuthRepositoryNotifier extends StateNotifier<UserModel?> {
  final FirebaseAuth _auth;
  AuthRepositoryNotifier({required FirebaseAuth auth})
      : _auth = auth,
        super(null);

  void signUp(String email, String password) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    state = UserModel(
        id: userCredential.user!.uid,
        email: userCredential.user!.email!,
        name: 'name');
  }

  void signIn(String email, String password) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    state = UserModel(
        id: userCredential.user!.uid,
        email: userCredential.user!.email!,
        name: 'name');
  }

  void signOut() async {
    await _auth.signOut();
    state = null;
  }
}
