import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/screens/splash_page/bloc.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_boxeh.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc _bloc = SplashBloc();

  @override
  void initState() {
    _bloc.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return CustomStreamBuilder<ScreenState>(
        bloc: _bloc,
        builder: (BuildContext context, state) {
          return CustomScaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      color: BC.navyGrey,
                      child: Stack(
                        children: [
                          CustomBokeh(
                            size: screenHeight / 5,
                            alignment: Alignment.center,
                            transform: const Offset(Sizes.scale, Sizes.scale),
                            shape: BoxShape.rectangle,
                            angleInRadians: pi / Sizes.s2,
                          ),
                          Positioned(
                            top: 0,
                            child:
                                Assets.images.onboarding.onboardingFirst.image(
                              width: screenWidth,
                              height: Platform.isIOS
                                  ? screenHeight < 840
                                      ? 820
                                      : screenHeight < 950
                                          ? screenHeight
                                          : 1600
                                  : 750,
                              fit: BoxFit.cover,
                            ),
                          ),
                          CustomBokeh(
                            size: screenWidth,
                            scaleY: 1,
                            scaleX: screenHeight > 950 ? 0.2 : 0.4,
                            alignment: Alignment.bottomCenter,
                            transform: Offset(
                                Sizes.scale,
                                screenHeight > 950
                                    ? screenHeight / 2.5
                                    : Sizes.s300),
                            shape: BoxShape.rectangle,
                            angleInRadians: pi / Sizes.s2,
                          ),
                        ],
                      )),
                ),
              ],
            ),
            activateFullSafeArea: false,
            safeAreaBottom: false,
          );
        });
  }
}
