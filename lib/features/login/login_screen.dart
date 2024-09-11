import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/base/bloc/bloc_provider.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/constants/icons.dart';
import 'package:messenger/constants/size_box.dart';
import 'package:messenger/shared/widgets/buttons/app_button.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(context, ref) {
    final bloc = ref.watch(BlocProvider.login);
    return Scaffold(
      body: Container(
        padding: EdgeInsetsConstants.all16,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFF0F1),
              Color(0xFFF4F3FF),
              Color(0xFFEFFFFF),
              Color(0xFFF3FFE8),
            ],
            stops: [0.0, 0.15, 0.35, 0.65, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(
              flex: 7,
              child: IconConstants.messenger,
            ),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: ColorConstants.gray500,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsConstants.horizontal6,
                          child: Text(
                            'Login with your Social Accounts',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.gray500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: ColorConstants.gray500,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBoxConstants.h8,
                    AppButton(
                      onPressed: bloc.onHandleLoginWithGoogle,
                      backgroundColor: ColorConstants.white,
                      prefix: IconConstants.google,
                      child: Text(
                        'Continue with Google',
                        style: AppTextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBoxConstants.h8,
                    AppButton(
                      onPressed: bloc.onHandleLoginWithFacebook,
                      backgroundColor: ColorConstants.white,
                      prefix: IconConstants.facebook,
                      child: Text(
                        'Continue with Facebook',
                        style: AppTextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconConstants.meta,
                SizedBoxConstants.w4,
                Text(
                  'Meta',
                  style: AppTextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
