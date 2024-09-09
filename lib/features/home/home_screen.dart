import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/shared/widgets/buttons/app_button.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bloc = ref.watch(BlocProvider.home);
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppButton(
              child: const Text('Luu'),
              onPressed: () async {
                bloc.initialUsers();
              }),
          GestureDetector(
            child: const Text(
              'Logout',
            ),
            onTap: () {
              bloc.onHandleLogout();
            },
          ),
        ],
      ),
    );
  }
}
