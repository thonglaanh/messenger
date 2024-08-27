import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';

class LoginScreen extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final bloc = ref.watch(BlocProvider.login);
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: const Text(
            'Login',
          ),
          onTap: () {
            bloc.onHandleLogin();
          },
        ),
      ),
    );
  }
}
