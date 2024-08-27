import 'package:messenger/constants/colors.dart';
import 'package:messenger/shared/icons/friends_icon.dart';
import 'package:messenger/shared/icons/messenger_icon.dart';

class IconConstants {
  static const messenger = MessengerIcon();
  static const messengerUnFocus = MessengerIcon(
    color: ColorConstants.gray450,
  );
  static const friends = FriendsIcon();
  static const friendsUnFocus = FriendsIcon(
    color: ColorConstants.gray450,
  );

  IconConstants._();
}
