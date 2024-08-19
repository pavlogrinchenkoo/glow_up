import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/guide/dto.dart';
import 'package:glow_up/screens/deep_scanning_page/page.dart';
import 'package:glow_up/screens/deep_scanning_result_page/page.dart';
import 'package:glow_up/screens/guide_info_page/page.dart';
import 'package:glow_up/screens/guide_page/page.dart';
import 'package:glow_up/screens/history_page/page.dart';
import 'package:glow_up/screens/menu_page/page.dart';
import 'package:glow_up/screens/onboarding_page/page.dart';
import 'package:glow_up/screens/results_page/page.dart';
import 'package:glow_up/screens/splash_page/page.dart';
import 'package:glow_up/screens/subscription_page/page.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(path: '/onboardings', page: OnboardingRoute.page),
    AutoRoute(path: '/subscription', page: SubscriptionRoute.page),
    AutoRoute(path: '/results', page: ResultsRoute.page),
    AutoRoute(path: '/history', page: HistoryRoute.page),
    AutoRoute(path: '/menu', page: MenuRoute.page),
    AutoRoute(path: '/guide', page: GuideRoute.page),
    AutoRoute(path: '/guideInfo', page: GuideInfoRoute.page),
    AutoRoute(path: '/deepScanning', page: DeepScanningRoute.page),
    AutoRoute(path: '/deepScanningResults', page: DeepScanningResultRoute.page),
  ];
}

// dart run build_runner watch
// dart run build_runner build
