import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/utils/notifi_service.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class SplashBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  SplashBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  void init(BuildContext context) async {
    if (context.mounted) {
      await Future.delayed(const Duration(milliseconds: 500));
      final checkShowOnboarding = await storage.read(session.isOnboardingShow);
      if (checkShowOnboarding != null) {
        if (checkShowOnboarding) {
          await NotificationService().initNotification();
          await hasActiveSubscription();
          context.router.replaceAll([MenuRoute()]);
          // context.router.replaceAll([ResultsRoute(activateSheet: false)]);
        } else {
          context.router
              .replaceAll([OnboardingRoute(isUseFirstOnboarding: false)]);
        }
      } else {
        context.router
            .replaceAll([OnboardingRoute(isUseFirstOnboarding: false)]);
      }
    }
  }

  Future<void> hasActiveSubscription() async {
    try {
      CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      if (!customerInfo.activeSubscriptions.isNotEmpty) {
        await storage.write(session.isUserSubscribed, false);
        await storage.write(session.isUserDisableBlur, false);
      }
    } catch (e) {
      log("Error checking subscription: $e");
    }
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
