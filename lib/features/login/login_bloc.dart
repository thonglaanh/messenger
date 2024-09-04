import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/base/dependency/app_service.dart';
import 'package:messenger/base/dependency/router/utils/route_input.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BlocBase {
  final Ref ref;
  LoginBloc(this.ref);

  late final routerService = ref.watch(AppService.router);

  final isLoadingLogin = BehaviorSubject<bool>.seeded(false);

  Future<void> onHandleLogin() async {
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
    isLoadingLogin.value = false;
    routerService.pushReplacement(RouteInput.root());
  }
}
