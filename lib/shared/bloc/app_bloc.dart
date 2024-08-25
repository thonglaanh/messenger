import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_base.dart';
import 'package:messenger/features/root/enums/navigation_bottom_tab_enum.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  final Ref ref;

  AppBloc(this.ref);
  final selectedBottomTabSubject =
      BehaviorSubject<NavigatorBottomTabEnum>.seeded(
    NavigatorBottomTabEnum.home,
  );
  @override
  void dispose() {
    super.dispose();
    selectedBottomTabSubject.close();
  }

  void onBottomTabChange(NavigatorBottomTabEnum currentTab) {
    selectedBottomTabSubject.value = currentTab;
  }
}
