import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(context, ref) {
    final bloc = ref.watch(BlocProvider.login);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: const Text(
              'Login',
            ),
            onTap: () {
              bloc.onHandleLoginWithGoogle();
            },
          ),
          GestureDetector(
            child: const Text(
              'Logout',
            ),
            onTap: () {
              bloc.onHandleLoginWithFacebook();
            },
          ),
        ],
      ),
    );
  }
}
