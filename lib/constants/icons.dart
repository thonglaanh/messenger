import 'package:messenger/constants/colors.dart';
import 'package:messenger/shared/icons/bubbles_chat_icon.dart';
import 'package:messenger/shared/icons/facebook_icon.dart';
import 'package:messenger/shared/icons/friends_icon.dart';
import 'package:messenger/shared/icons/google_icon.dart';
import 'package:messenger/shared/icons/messenger_icon.dart';
import 'package:messenger/shared/icons/meta_icon.dart';

class IconConstants {
  static const bubblesChat = BubblesChatIcon();
  static const bubblesChatUnFocus = BubblesChatIcon(
    color: ColorConstants.gray450,
  );
  static const friends = FriendsIcon();
  static const friendsUnFocus = FriendsIcon(
    color: ColorConstants.gray450,
  );
  static const meta = MetaIcon(
    width: 20,
  );
  static const facebook = FacebookIcon(
    width: 25,
  );
  static const messenger = MessengerIcon(
    width: 70,
  );
  static const google = GoogleIcon(
    width: 25,
  );

  IconConstants._();
}
