import 'package:messenger/constants/colors.dart';
import 'package:messenger/shared/icons/left_arrow_icon.dart';
import 'package:messenger/shared/icons/right_arrow_icon.dart';
import 'package:messenger/shared/icons/bubbles_chat_icon.dart';
import 'package:messenger/shared/icons/call_video_icon.dart';
import 'package:messenger/shared/icons/camera_icon.dart';
import 'package:messenger/shared/icons/default_avatar_icon.dart';
import 'package:messenger/shared/icons/facebook_icon.dart';
import 'package:messenger/shared/icons/friends_icon.dart';
import 'package:messenger/shared/icons/google_icon.dart';
import 'package:messenger/shared/icons/icon.dart';
import 'package:messenger/shared/icons/like_icon.dart';
import 'package:messenger/shared/icons/messenger_icon.dart';
import 'package:messenger/shared/icons/meta_icon.dart';
import 'package:messenger/shared/icons/micro_icon.dart';
import 'package:messenger/shared/icons/more_option_icon.dart';
import 'package:messenger/shared/icons/note_icon.dart';
import 'package:messenger/shared/icons/phone_icon.dart';
import 'package:messenger/shared/icons/picture_icon.dart';
import 'package:messenger/shared/icons/search_icon.dart';
import 'package:messenger/shared/icons/sedding_icon.dart';
import 'package:messenger/shared/icons/sent_icon.dart';

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
    width: 30,
  );
  static const messenger = MessengerIcon(
    width: 120,
  );
  static const google = GoogleIcon(
    width: 30,
  );
  static const defaultAvatar = DefaultAvatarIcon();
  static const note = NoteIcon();
  static const camera = CameraIcon();
  static const search = SearchIcon();
  static const sent = SentIcon();
  static const sending = SendingIcon();

  static const cameraPrimary = CameraIcon(
    color: ColorConstants.blue350,
    width:25 ,
  );
  static const leftArrow = LeftArrowIcon();
  static const rightArrow = RightArrowIcon();

  static const callVideo = CallVideoIcon();
  static const phone = PhoneIcon();
  static const icon = Icon();
  static const moreOption = MoreOptionIcon();
  static const like = LikeIcon();
  static const micro = MicroIcon();
  static const picture = PictureIcon();

  IconConstants._();
}
