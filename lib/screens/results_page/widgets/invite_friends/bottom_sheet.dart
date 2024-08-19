import 'dart:math';

import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/results_page/widgets/invite_friends/bloc.dart';
import 'package:glow_up/screens/results_page/widgets/invite_friends/show_footer_sheet.dart';
import 'package:glow_up/screens/results_page/widgets/invite_friends/write_footer_sheet.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custon_text_field.dart';
import 'package:flutter/cupertino.dart';

class FriendsBottomSheet extends StatefulWidget {
  const FriendsBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<FriendsBottomSheet> createState() => _FriendsBottomSheetState();
}

class _FriendsBottomSheetState extends State<FriendsBottomSheet> {
  final TextEditingController controller = TextEditingController();
  final FriendsSheetBloc bloc = FriendsSheetBloc();

  @override
  void initState() {
    super.initState();
    bloc.init(context);
  }

  @override
  void dispose() {
    bloc.disposeFocus();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.initFocusNodeListener();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final maxHeight = height < 840 ? 0.75 : 0.7;
    final heightKeyboardActivate = height < 840 ? 0.45 : 0.36;
    final heightKeyboardDisable = height < 840 ? 0.75 : 0.7;
    final S s = S.of(context);
    return CustomStreamBuilder(
      bloc: bloc,
      builder: (context, ScreenState state) {
        final bool checkShowKeyboard = state.isKeyboardVisible;
        final double initialAndMinChildSize =
            !checkShowKeyboard && state.changeSheetContent
                ? heightKeyboardActivate
                : heightKeyboardDisable;

        return DraggableScrollableSheet(
          initialChildSize: initialAndMinChildSize,
          minChildSize: initialAndMinChildSize,
          maxChildSize: maxHeight,
          expand: false,
          builder: (context, scrollController) => Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppRadius.r30),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  BC.salad,
                  BC.navyGrey,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.scale, vertical: Sizes.scale),
              child: Container(
                decoration: BoxDecoration(
                  color: BC.navyGrey,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppRadius.r30),
                  ),
                ),
                child: Stack(
                  children: [
                    CustomBokeh(
                      size: height,
                      scaleY: 0.6,
                      scaleX: 0.6,
                      alignment: Alignment.bottomCenter,
                      transform: const Offset(Sizes.scale, 100),
                      shape: BoxShape.circle,
                      angleInRadians: pi / Sizes.s2,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Space.h8,
                        Container(
                          margin:
                              const EdgeInsets.symmetric(vertical: Sizes.s10),
                          width: Sizes.s100,
                          height: Sizes.s8,
                          decoration: BoxDecoration(
                            color: BC.gray,
                            borderRadius: BorderRadius.circular(Sizes.s8),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: scrollController,
                            physics: const NeverScrollableScrollPhysics(),
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Sizes.s15),
                                child: Column(
                                  children: [
                                    Text(
                                      state.changeSheetContent
                                          ? s.gotInviteCode
                                          : s.inviteFriends,
                                      style: BS.tex24.apply(color: BC.salad),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: height / Sizes.s400),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: Sizes.s20),
                                      child: Text(
                                        state.changeSheetContent
                                            ? s.youCanActivate
                                            : s.useYourCode,
                                        style: BS.tex14withFont500
                                            .apply(color: BC.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Space.h8,
                                    state.changeSheetContent
                                        ? const SizedBox.shrink()
                                        : Column(
                                            children: [
                                              Text(
                                                s.earn,
                                                style: BS.tex24
                                                    .apply(color: BC.salad),
                                                textAlign: TextAlign.center,
                                              ),
                                              Space.h8,
                                              Text(
                                                s.whenThenPay,
                                                style: BS.tex14withFont500
                                                    .apply(color: BC.white),
                                                textAlign: TextAlign.center,
                                              ),
                                              Space.h24,
                                            ],
                                          ),
                                    CustomTextField(
                                      labelText: state.changeSheetContent
                                          ? s.tapToEnter
                                          : state.code,
                                      controller: controller,
                                      borderColor: BC.gray,
                                      borderRadius: AppRadius.r18,
                                      borderWidth: 0.5,
                                      verticalPadding: Sizes.s7,
                                      onChanged: (_) =>
                                          bloc.checkTextController(controller),
                                      hintStyleColor: state.changeSheetContent
                                          ? BC.avatarGrey
                                          : BC.white,
                                      readOnly: state.changeSheetContent
                                          ? state.isAcceptFriendCode
                                              ? true
                                              : false
                                          : true,
                                      exitingCode: state.exitingCode
                                          ? state.exitingCode
                                          : state.notFoundCode,
                                      focusNode: state.focusNode,
                                      autoFocus: true,
                                    ),
                                    if (state.exitingCode || state.notFoundCode)
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Space.h2,
                                            Text(
                                              state.exitingCode
                                                  ? s.thisCodeExit
                                                  : s.thisCodeNotFound,
                                              style:
                                                  BS.tex16.apply(color: BC.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Space.h16,
                                    state.changeSheetContent
                                        ? WriteFooterSheet(
                                            isActivated:
                                                state.checkMaxWriteCode,
                                            isAccept: state.isAcceptFriendCode,
                                            activateOnTap: () {
                                              bloc.getFriendCode(
                                                  controller, context);
                                              AnalyticsAmplitude()
                                                  .logWriteAnInviteCode();
                                            },
                                            exitingCode: state.exitingCode
                                                ? state.exitingCode
                                                : state.notFoundCode,
                                            writeAnotherCode: () {
                                              bloc.writeAnotherCode(controller);
                                              AnalyticsAmplitude()
                                                  .logWriteAnotherInviteCode();
                                            },
                                          )
                                        : ShowFooterSheet(
                                            isCopyCode: state.isCopyCode,
                                            copyCode: () {
                                              bloc.copyCode();
                                              AnalyticsAmplitude()
                                                  .logCopyYourCode();
                                            },
                                            inviteCode: () {
                                              bloc.showWriteCode();
                                              AnalyticsAmplitude()
                                                  .logGotAnInviteCode();
                                            },
                                            redeemCode: () {
                                              bloc.redeemCode(context);
                                              AnalyticsAmplitude()
                                                  .logInviteFriendRedeem();
                                            },
                                          )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
