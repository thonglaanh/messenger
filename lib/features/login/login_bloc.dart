import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/local_storage/local_storage_key.dart';
import 'package:messenger/base/dependency/network/users/create/create_user_request_model.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BlocBase {
  final Ref ref;

  late final routerService = ref.watch(AppService.router);
  late final networkService = ref.watch(AppService.network);
  late final localStorageService = ref.watch(AppService.localStorage);

  final isLoadingLogin = BehaviorSubject<bool>.seeded(false);

  LoginBloc(this.ref) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        checkLoggedIn();
      },
    );
  }

  Future<void> checkLoggedIn() async {
    final uid = localStorageService.getString(LocalStorageKey.uid);
    print(uid);
    if (uid == null) return;
    routerService.pushReplacement(RouteInput.root());
  }

  Future<void> onHandleLoginWithGoogle() async {
    isLoadingLogin.value = true;
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount == null) {
      isLoadingLogin.value = false;
      return;
    }
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential authCredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential userCredential =
        await firebaseAuth.signInWithCredential(authCredential);
    if (userCredential.user == null) {
      isLoadingLogin.value = false;
      return;
    }
    handleRegisterUser(userCredential.user!);
  }

  Future<void> onHandleLoginWithFacebook() async {
    isLoadingLogin.value = true;
    final LoginResult result = await FacebookAuth.instance.login(
      loginBehavior: LoginBehavior.webOnly,
    );
    if (result.status != LoginStatus.success) {
      isLoadingLogin.value = false;
      return;
    }
    final OAuthCredential credential =
        FacebookAuthProvider.credential(result.accessToken!.tokenString);
    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCredential.user == null) {
      isLoadingLogin.value = false;
      return;
    }
    handleRegisterUser(userCredential.user!);
  }

  Future<void> handleRegisterUser(User userAuth) async {
    final (user, err) =
        await networkService.usersRepository.getUser(uid: userAuth.uid);
    if (err != null) {
      isLoadingLogin.value = false;
      return;
    }
    localStorageService.put(LocalStorageKey.uid, userAuth.uid);
    if (user == null) {
      await networkService.usersRepository.createUser(
        request: CreateUserRequestModel(
          displayName: userAuth.displayName ?? '',
          phoneNumber: userAuth.phoneNumber ?? '',
          email: userAuth.email ?? '',
          avatar: userAuth.photoURL,
        ),
        uid: userAuth.uid,
      );
    }
    isLoadingLogin.value = false;
    routerService.pushReplacement(RouteInput.root());
  }
}
