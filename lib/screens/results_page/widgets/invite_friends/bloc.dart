import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:glow_up/api/invite_friend/dto.dart';
import 'package:glow_up/api/requests.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class FriendsSheetBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  FriendsSheetBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  void initFocusNodeListener() {
    currentState.focusNode?.addListener(() {
      final isFocus = currentState.focusNode?.hasFocus ?? false;
      setState(currentState.copyWith(isKeyboardVisible: isFocus));
    });
  }

  void init(BuildContext context) async {
    setState(currentState.copyWith(focusNode: FocusNode()));
    initFocusNodeListener();
    final String personalCode = await getPersonalCode();
    setState(currentState.copyWith(code: personalCode, focusNode: FocusNode()));
  }

  void disposeFocus() {
    currentState.focusNode?.dispose();
  }

  void checkTextController(TextEditingController textController) {
    textController.text.isNotEmpty
        ? setState(currentState.copyWith(checkMaxWriteCode: true))
        : setState(currentState.copyWith(checkMaxWriteCode: false));
  }

  Future<void> getFriendCode(
      TextEditingController textController, BuildContext context) async {
    final uniqueId = await Purchases.appUserID;
    final S s = S.of(context);
    InviteFriendModelCodeEnum inviteFriendModelCodeEnum = await Requests()
        .activateInviteFriendCode(uniqueId, textController.text, s);

    if (InviteFriendModelCodeEnum.activate == inviteFriendModelCodeEnum) {
      setState(currentState.copyWith(
          friendCode: textController.text, isAcceptFriendCode: true));
      await storage.write(session.isUserActivatedFriendCode, true);
    } else if (InviteFriendModelCodeEnum.exit == inviteFriendModelCodeEnum) {
      setState(currentState.copyWith(
          friendCode: textController.text, exitingCode: true));
    } else if (InviteFriendModelCodeEnum.notFound ==
        inviteFriendModelCodeEnum) {
      setState(currentState.copyWith(
          friendCode: textController.text, notFoundCode: true));
    }
  }

  void writeAnotherCode(TextEditingController textController) {
    textController.clear();
    setState(currentState.copyWith(
      checkMaxWriteCode: false,
      isAcceptFriendCode: false,
      exitingCode: false,
      notFoundCode: false,
    ));
  }

  void copyCode() {
    Clipboard.setData(ClipboardData(text: currentState.code));
    setState(currentState.copyWith(isCopyCode: true));
  }

  Future<void> showWriteCode() async {
    final isActivateFriendCode =
        await storage.read(session.isUserActivatedFriendCode);
    currentState.changeSheetContent
        ? setState(currentState.copyWith(changeSheetContent: false))
        : setState(currentState.copyWith(
            changeSheetContent: true,
            focusNode: FocusNode(),
            isAcceptFriendCode:
                isActivateFriendCode == null ? false : isActivateFriendCode));
  }

  Future<String> getPersonalCode() async {
    String uniqueId = await Purchases.appUserID;
    final inviteFriendModel =
        await Requests().getInviteFriendPersonalCode(uniqueId);
    return inviteFriendModel.promocode ?? "";
  }

  Future<void> redeemCode(BuildContext context) async {
    final uniqueId = await Purchases.appUserID;
    bool checkRedeem = await Requests().checkActivateInviteFriendCode(uniqueId);
    if (checkRedeem) {
      await storage.write(session.isUserDisableBlur, true);
      context.router.push(ResultsRoute(activateSheet: false));
    } else {
      context.router.push(const SubscriptionRoute());
    }
  }
}

class ScreenState {
  final bool loading;
  final bool isCopyCode;
  final bool changeSheetContent;
  final bool checkMaxWriteCode;
  final bool isAcceptFriendCode;
  final bool exitingCode;
  final bool notFoundCode;
  final String code;
  final String? friendCode;
  final FocusNode? focusNode;
  final bool isKeyboardVisible;

  ScreenState({
    this.loading = false,
    this.isCopyCode = false,
    this.changeSheetContent = false,
    this.checkMaxWriteCode = false,
    this.isAcceptFriendCode = false,
    this.exitingCode = false,
    this.notFoundCode = false,
    this.code = "",
    this.friendCode,
    this.focusNode,
    this.isKeyboardVisible = false,
  });

  ScreenState copyWith({
    bool? loading,
    bool? isCopyCode,
    bool? changeSheetContent,
    bool? checkMaxWriteCode,
    bool? isAcceptFriendCode,
    bool? exitingCode,
    bool? notFoundCode,
    String? code,
    String? friendCode,
    FocusNode? focusNode,
    bool? isKeyboardVisible,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      isCopyCode: isCopyCode ?? this.isCopyCode,
      changeSheetContent: changeSheetContent ?? this.changeSheetContent,
      checkMaxWriteCode: checkMaxWriteCode ?? this.checkMaxWriteCode,
      isAcceptFriendCode: isAcceptFriendCode ?? this.isAcceptFriendCode,
      exitingCode: exitingCode ?? this.exitingCode,
      notFoundCode: notFoundCode ?? this.notFoundCode,
      code: code ?? this.code,
      friendCode: friendCode ?? this.friendCode,
      focusNode: focusNode ?? this.focusNode,
      isKeyboardVisible: isKeyboardVisible ?? this.isKeyboardVisible,
    );
  }
}
