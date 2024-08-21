import 'dart:io';

import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:glow_up/firebase_options.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/localization.dart';
import 'package:provider/provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

final _configuration = PurchasesConfiguration(Platform.isIOS
    ? 'appl_IVjwAFerSPDVYDZrItTfOGusdzF'
    : 'goog_zxipBekshnKSHGXeNnEVfLVBUOk');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Purchases.configure(_configuration);
  await GetStorage.init();
  AnalyticsAmplitude().initializeAnalytics();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext buildContext) {
    return ChangeNotifierProvider<LanguageService>(create: (context) {
      return LanguageService();
    }, builder: (context, child) {
      var service = context.watch<LanguageService>();
      final l = service.locale;
      if (l != _currentLocale) {
        _currentLocale = l;
        _rebuildAllChildren(context);
      }
      return MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: l,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          scaffoldBackgroundColor: BC.white,
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: Colors.transparent),
        ),
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      );
    });
  }
}

Locale _currentLocale = const Locale('en');

void _rebuildAllChildren(BuildContext context) {
  void rebuild(Element el) {
    el.markNeedsBuild();
    el.visitChildren(rebuild);
  }

  (context as Element).visitChildren(rebuild);
}
