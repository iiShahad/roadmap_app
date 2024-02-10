import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadmap_app/models/user_model.dart';
import 'package:roadmap_app/providers/firebase_providers.dart';

final authStateChangeProvider = StreamProvider((ref) {
  final authController = ref.watch(authRepositoryProvider.notifier);
  return authController.authStateChange;
});

final authRepositoryProvider =
    StateNotifierProvider<AuthRepositoryNotifier, UserModel?>(
  (ref) => AuthRepositoryNotifier(
    auth: ref.watch(firebaseAuthProvider),
    firestore: ref.watch(firestoreProvider),
  ),
);

class AuthRepositoryNotifier extends StateNotifier<UserModel?> {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  AuthRepositoryNotifier(
      {required FirebaseAuth auth, required FirebaseFirestore firestore})
      : _auth = auth,
        _firestore = firestore,
        super(null);

  Stream<User?> get authStateChange => _auth.authStateChanges();

  CollectionReference get users =>
      _firestore.collection(FirestoreConstants.Users.toString());

  void signUp(String email, String username, String password) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final user = UserModel(
        id: userCredential.user!.uid,
        email: userCredential.user!.email!,
        name: username);
    await users.doc(userCredential.user!.uid).set(user.toJson());
    state = user;
  }

  void signIn(String email, String password) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    getUserData(userCredential.user!.uid);
  }

  void getUserData(String uid) {
    users.doc(uid).get().then((value) {
      state = UserModel.fromJson(value.data() as Map<String, dynamic>);
    });
    print(state);
  }

  void signOut() async {
    await _auth.signOut();
    state = null;
  }
}
