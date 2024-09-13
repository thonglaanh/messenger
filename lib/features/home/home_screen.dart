import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/rx/obs_builder.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/constants/size_box.dart';
import 'package:messenger/shared/widgets/avatar/app_avatar_circle.dart';
import 'package:messenger/shared/widgets/icon_button/app_icon_button.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBloc = ref.watch(BlocProvider.app);
    return Scaffold(
      body: ObsBuilder(
          streams: [
            appBloc.userSubject,
          ],
          builder: (context) {
            final avatar = appBloc.userSubject.value?.avatar ?? '';
            return Column(
              children: [
                Container(
                  padding: EdgeInsetsConstants.all16,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppAvatarCircle(url: avatar, size: 40),
                      SizedBoxConstants.w12,
                      Text(
                        'Chats',
                        style: AppTextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      AppIconButton(
                        onTap: () {},
                        icon: IconConstants.note,
                      ),
                      SizedBoxConstants.w12,
                      AppIconButton(
                        onTap: () {},
                        icon: IconConstants.camera,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
