import 'package:auto_route/auto_route.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/menu_page/bloc.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/analytics_amplitude.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_button.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final MenuBloc _bloc = MenuBloc();

  @override
  void initState() {
    _bloc.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final height = MediaQuery.of(context).size.height;
    return CustomStreamBuilder(
      bloc: _bloc,
      builder: (context, ScreenState state) {
        return CustomScaffold(
          appBar: CustomAppBar(
            title: s.menu,
            useLeftButton: false,
            useRightButton: true,
            rightIcon: Assets.images.cancel,
            rightOnClick: () {
              _bloc.toResult(context);
              AnalyticsAmplitude().logMenuBack();
            },
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: BC.navyGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.s25),
              child: Column(
                children: [
                  SizedBox(height: height / 23),
                  if (state.buttonsMenu !=
                      null) // Generate buttons using buttonsData
                    for (var buttonData in state.buttonsMenu!)
                      Column(
                        children: [
                          CustomButton(
                            buttonData['text'](s),
                            onTap: buttonData['action'],
                            outLine: true,
                            borderColor: BC.white,
                            colorButton: BC.white,
                            textColor: BC.black,
                            borderRadius: AppRadius.r18,
                            padding: height > 840
                                ? Sizes.s23
                                : height > 700
                                    ? Sizes.s23
                                    : Sizes.s18,
                          ),
                          Space.h8,
                        ],
                      ),
                  height < 840 ? Space.h16 : Space.h40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: !state.isTikTokShow
                            ? Assets.images.tiktokShowed.svg()
                            : Assets.images.tikTok.svg(),
                        onPressed: () {
                          _bloc.openTikTok();
                          AnalyticsAmplitude().logMenuOpenTiktok();
                        },
                      ),
                      Space.w16,
                      IconButton(
                        icon: state.isInstagramShow
                            ? Assets.images.instagramShowed.svg()
                            : Assets.images.instagram.svg(),
                        onPressed: () {
                          _bloc.openInstagram();
                          AnalyticsAmplitude().logMenuOpenInstagram();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          activateFullSafeArea: true,
        );
      },
    );
  }
}
