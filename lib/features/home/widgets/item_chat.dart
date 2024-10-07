import 'package:flutter/cupertino.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/constants/size_box.dart';
import 'package:messenger/features/home/widgets/enums/message_status_enum.dart';
import 'package:messenger/shared/widgets/avatar/app_avatar_circle.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class ItemChat extends StatelessWidget {
  final Widget avatar;
  final String name;
  final String lastMessage;
  final String time;
  final VoidCallback? onTap;
  final MessageStatusEnum? messageStatus;
  final String? url;

  const ItemChat({
    super.key,
    required this.avatar,
    required this.name,
    required this.lastMessage,
    required this.time,
    this.onTap,
    this.url,
    this.messageStatus,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsetsConstants.vertical8 + EdgeInsetsConstants.horizontal16,
        child: Row(
          children: [
            avatar,
            SizedBoxConstants.w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        AppTextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text.rich(
                    TextSpan(
                      text: lastMessage.length > 30
                          ? '${lastMessage.substring(0, 30)}...'
                          : lastMessage,
                      style: AppTextStyle(color: ColorConstants.gray500),
                      children: [
                        const TextSpan(text: ' • '),
                        TextSpan(text: time),
                      ],
                    ),
                  )
                ],
              ),
            ),
            _messageStatusIcon(messageStatus, url) ?? SizedBoxConstants.shrink,
          ],
        ),
      ),
    );
  }
}

Widget? _messageStatusIcon(MessageStatusEnum? messageStatus, String? url) {
  switch (messageStatus) {
    case MessageStatusEnum.read:
      return AppAvatarCircle(url: url ?? '', size: 16);
    case MessageStatusEnum.sent:
      return IconConstants.sent;
    case MessageStatusEnum.sending:
      return IconConstants.sending;
    case MessageStatusEnum.sendError:
      return null;
    default:
      return AppAvatarCircle(url: url ?? '', size: 16);
  }
}
