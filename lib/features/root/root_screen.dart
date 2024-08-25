import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/base/dependency/router/utils/route_page.dart';
import 'package:messenger/base/dependency/rx/obs_builder.dart';
import 'package:messenger/features/root/enums/navigation_bottom_tab_enum.dart';
import 'package:messenger/features/root/widgets/app_bottom_navigation_bar.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBloc = ref.watch(BlocProvider.app);
    return Scaffold(
      body: Stack(
        children: NavigatorBottomTabEnum.values.map((tab) {
          return ObsBuilder(
              streams: [
                appBloc.selectedBottomTabSubject,
              ],
              builder: (context) {
                return Offstage(
                  offstage: tab != appBloc.selectedBottomTabSubject.value,
                  child: Navigator(
                    onGenerateRoute: buildRouteFactory(tab),
                    initialRoute: tab.route,
                  ),
                );
              });
        }).toList(),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.red,
          highlightColor: Colors.red,
        ),
        child: const AppBottomNavigationBar(),
      ),
    );
  }

  RouteFactory buildRouteFactory(NavigatorBottomTabEnum tab) {
    switch (tab) {
      case NavigatorBottomTabEnum.home:
        return RoutePage.onGenerateHomeRoute;
      case NavigatorBottomTabEnum.friends:
        return RoutePage.onGenerateFriendsRoute;
    }
  }
}
