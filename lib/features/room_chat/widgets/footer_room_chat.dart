import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/constants/size_box.dart';
import 'package:messenger/shared/widgets/text_field/app_text_field.dart';

class FooterRoomChat extends ConsumerStatefulWidget {
  const FooterRoomChat({super.key});

  @override
  ConsumerState<FooterRoomChat> createState() => _FooterRoomChatState();
}

class _FooterRoomChatState extends ConsumerState<FooterRoomChat> {
  late final bloc = ref.watch(BlocProvider.roomChat);

  @override
  Widget build(BuildContext context) {
    final isFocus = bloc.sendMessageFocusNode.hasFocus;
    print('isFocus: $isFocus');
    return Container(
      padding: EdgeInsetsConstants.all12,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (!isFocus) ...[
            IconConstants.moreOption,
            SizedBoxConstants.w20,
            IconConstants.cameraPrimary,
            SizedBoxConstants.w20,
            IconConstants.picture,
            SizedBoxConstants.w20,
            IconConstants.micro,
          ] else ...[
            IconConstants.rightArrow,
          ],
          SizedBoxConstants.w20,
          Expanded(
              child: AppTextField(
            controller: bloc.sendMessageEditingController,
            hintText: 'Aa',
            focusNode: bloc.sendMessageFocusNode,
            cursorColor: ColorConstants.blue350,
          )),
          SizedBoxConstants.w20,
          isFocus ? IconConstants.sending : IconConstants.like,
        ],
      ),
    );
  }
}
