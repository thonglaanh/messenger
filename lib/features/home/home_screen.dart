import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/rx/obs_builder.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBloc = ref.watch(BlocProvider.app);
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ObsBuilder(
              streams: [
                appBloc.userSubject,
              ],
              builder: (context) {
                final avatar = appBloc.userSubject.value?.avatar ?? '';
                return Image.network(
                  avatar,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                );
              }),
        ],
      ),
    );
  }
}
