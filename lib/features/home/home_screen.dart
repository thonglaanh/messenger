import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/rx/obs_builder.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/constants/size_box.dart';
import 'package:messenger/features/home/widgets/enums/message_status_enum.dart';
import 'package:messenger/features/home/widgets/item_chat.dart';
import 'package:messenger/shared/widgets/avatar/app_avatar_circle.dart';
import 'package:messenger/shared/widgets/icon_button/app_icon_button.dart';
import 'package:messenger/shared/widgets/text_field/app_text_field.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBloc = ref.watch(BlocProvider.app);
    final bloc = ref.watch(BlocProvider.home);
    return Scaffold(
      body: ObsBuilder(
          streams: [
            appBloc.userSubject,
            bloc.listUsersSubject,
          ],
          builder: (context) {
            final avatar = appBloc.userSubject.value?.avatar ?? '';
            final listUsers = bloc.listUsersSubject.value;
            return Column(
              children: [
                //header
                Container(
                  padding: EdgeInsetsConstants.all16,
                  child: Column(
                    children: [
                      Row(
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
                      SizedBoxConstants.h12,
                      AppTextField(
                        controller: bloc.searchController,
                        hintText: 'Search',
                        prefixIcon: IconConstants.search,
                      ),
                    ],
                  ),
                ),
                //list users
                Container(
                  height: 100,
                  padding: EdgeInsetsConstants.left8,
                  child: ListView.builder(
                    itemCount: listUsers.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final user = listUsers[index];
                      final nameUser =
                          (user.displayName ?? '').split(" ").first;
                      return Container(
                        padding: EdgeInsetsConstants.all10,
                        child: Column(
                          children: [
                            AppAvatarCircle(
                              url: user.avatar ?? '',
                              size: 52,
                              isOnline: user.status,
                            ),
                            SizedBoxConstants.h8,
                            Text(
                              nameUser,
                              style: AppTextStyle(
                                fontSize: 12,
                                color: ColorConstants.gray600,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: listUsers.length,
                    itemBuilder: (context, index) {
                      final user = listUsers[index];
                      print(user.id);
                      return ItemChat(
                        onTap: () {
                          bloc.onTapRoomChat(user.id ?? '');
                        },
                        avatar: AppAvatarCircle(
                          url: user.avatar ?? '',
                          size: 60,
                          isOnline: user.status,
                        ),
                        name: user.displayName ?? '',
                        lastMessage: 'You : Ok, see you later',
                        time: '9:25 AM',
                        url: user.avatar,
                        messageStatus: MessageStatusEnum.sent,
                      );
                    },
                  ),
                ),
              ],
            );
          }),
    );
  }
}
