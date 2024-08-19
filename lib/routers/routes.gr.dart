// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DeepScanningRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeepScanningPage(),
      );
    },
    DeepScanningResultRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeepScanningResultPage(),
      );
    },
    GuideInfoRoute.name: (routeData) {
      final args = routeData.argsAs<GuideInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GuideInfoPage(
          key: args.key,
          enumCheckGuideModel: args.enumCheckGuideModel,
        ),
      );
    },
    GuideRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GuidePage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryPage(),
      );
    },
    MenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MenuPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnboardingPage(
          key: args.key,
          isUseFirstOnboarding: args.isUseFirstOnboarding,
        ),
      );
    },
    ResultsRoute.name: (routeData) {
      final args = routeData.argsAs<ResultsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResultsPage(
          key: args.key,
          activateSheet: args.activateSheet,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SubscriptionPage(),
      );
    },
  };
}

/// generated route for
/// [DeepScanningPage]
class DeepScanningRoute extends PageRouteInfo<void> {
  const DeepScanningRoute({List<PageRouteInfo>? children})
      : super(
          DeepScanningRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeepScanningRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeepScanningResultPage]
class DeepScanningResultRoute extends PageRouteInfo<void> {
  const DeepScanningResultRoute({List<PageRouteInfo>? children})
      : super(
          DeepScanningResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeepScanningResultRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GuideInfoPage]
class GuideInfoRoute extends PageRouteInfo<GuideInfoRouteArgs> {
  GuideInfoRoute({
    Key? key,
    required EnumCheckGuideModel enumCheckGuideModel,
    List<PageRouteInfo>? children,
  }) : super(
          GuideInfoRoute.name,
          args: GuideInfoRouteArgs(
            key: key,
            enumCheckGuideModel: enumCheckGuideModel,
          ),
          initialChildren: children,
        );

  static const String name = 'GuideInfoRoute';

  static const PageInfo<GuideInfoRouteArgs> page =
      PageInfo<GuideInfoRouteArgs>(name);
}

class GuideInfoRouteArgs {
  const GuideInfoRouteArgs({
    this.key,
    required this.enumCheckGuideModel,
  });

  final Key? key;

  final EnumCheckGuideModel enumCheckGuideModel;

  @override
  String toString() {
    return 'GuideInfoRouteArgs{key: $key, enumCheckGuideModel: $enumCheckGuideModel}';
  }
}

/// generated route for
/// [GuidePage]
class GuideRoute extends PageRouteInfo<void> {
  const GuideRoute({List<PageRouteInfo>? children})
      : super(
          GuideRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuideRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryPage]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MenuPage]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    Key? key,
    bool isUseFirstOnboarding = false,
    List<PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            key: key,
            isUseFirstOnboarding: isUseFirstOnboarding,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<OnboardingRouteArgs> page =
      PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.key,
    this.isUseFirstOnboarding = false,
  });

  final Key? key;

  final bool isUseFirstOnboarding;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key, isUseFirstOnboarding: $isUseFirstOnboarding}';
  }
}

/// generated route for
/// [ResultsPage]
class ResultsRoute extends PageRouteInfo<ResultsRouteArgs> {
  ResultsRoute({
    Key? key,
    required bool activateSheet,
    List<PageRouteInfo>? children,
  }) : super(
          ResultsRoute.name,
          args: ResultsRouteArgs(
            key: key,
            activateSheet: activateSheet,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultsRoute';

  static const PageInfo<ResultsRouteArgs> page =
      PageInfo<ResultsRouteArgs>(name);
}

class ResultsRouteArgs {
  const ResultsRouteArgs({
    this.key,
    required this.activateSheet,
  });

  final Key? key;

  final bool activateSheet;

  @override
  String toString() {
    return 'ResultsRouteArgs{key: $key, activateSheet: $activateSheet}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubscriptionPage]
class SubscriptionRoute extends PageRouteInfo<void> {
  const SubscriptionRoute({List<PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
