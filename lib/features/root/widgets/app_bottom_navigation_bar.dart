import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/dependency/rx/obs_builder.dart';
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
          selectedIconTheme: const IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          currentIndex: appBloc.selectedBottomTabSubject.value.index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          onTap: (index) {
            appBloc.onBottomTabChange(NavigatorBottomTabEnum.values[index]);
          },
          items: [
            BottomNavigationBarItem(
              icon: selectedTab == NavigatorBottomTabEnum.home
                  ? Container()
                  : Container(),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: selectedTab == NavigatorBottomTabEnum.friends
                  ? Container()
                  : Container(),
              label: 'friends',
            ),
          ],
        );
      },
    );
  }
}
