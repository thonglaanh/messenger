import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/dependency/rx/obs_builder.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/features/root/enums/navigation_bottom_tab_enum.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final appBloc = ref.watch(BlocProvider.app);
    return ObsBuilder(
      streams: [appBloc.selectedBottomTabSubject],
      builder: (ctx) {
        final selectedTab = appBloc.selectedBottomTabSubject.value;
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: appBloc.selectedBottomTabSubject.value.index,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            appBloc.onBottomTabChange(NavigatorBottomTabEnum.values[index]);
          },
          items: [
            BottomNavigationBarItem(
              icon: selectedTab == NavigatorBottomTabEnum.home
                  ? IconConstants.bubblesChat
                  : IconConstants.bubblesChatUnFocus,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: selectedTab == NavigatorBottomTabEnum.friends
                  ? IconConstants.friends
                  : IconConstants.friendsUnFocus,
              label: '',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        );
      },
    );
  }
}
