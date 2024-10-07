import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/constants/size_box.dart';
import 'package:messenger/shared/widgets/avatar/app_avatar_circle.dart';
import 'package:messenger/shared/widgets/icon_button/app_icon_button.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class HeaderRoomChat extends ConsumerWidget {
  final String? userName;
  final String? avatar;
  const HeaderRoomChat({super.key, this.avatar, this.userName});

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      padding: EdgeInsetsConstants.vertical8 + EdgeInsetsConstants.horizontal16,
      child: Row(
        children: [
          AppIconButton(
            icon: IconConstants.backArrow,
            onTap: () {},
            backgroundColor: CupertinoColors.white,
          ),
          SizedBoxConstants.w20,
          AppAvatarCircle(url: avatar ?? '', size: 36),
          SizedBoxConstants.w12,
          Column(
            children: [
              Text(
                userName ?? '',
                style: AppTextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Messager',
                style: AppTextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.gray300,
                ),
              )
            ],
          ),
          const Spacer(),
          AppIconButton(
            icon: IconConstants.phone,
            onTap: () {},
            backgroundColor: CupertinoColors.white,
          ),
          SizedBoxConstants.w20,
          AppIconButton(
            icon: IconConstants.callVideo,
            onTap: () {},
            backgroundColor: CupertinoColors.white,
          ),
        ],
      ),
    );
  }
}
