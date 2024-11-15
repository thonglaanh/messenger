import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';

class UnknownScreen extends ConsumerWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bloc = ref.watch(BlocProvider.unknown);
    return Scaffold(
      appBar: AppBar(title: const Text('Opps')),
      body: GestureDetector(
        onTap: bloc.onTapBiometric,
        child: const Column(
          children: [Text('Opps')],
        ),
      ),
    );
  }
}
