import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_page/bloc.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  final GuideBloc _bloc = GuideBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return CustomStreamBuilder(
      bloc: _bloc,
      builder: (context, ScreenState state) {
        return CustomScaffold(
          appBar: CustomAppBar(
            title: s.glowUpGuide,
            useLeftButton: false,
            useRightButton: true,
            rightIcon: Assets.images.settings,
            rightOnClick: () => _bloc.toMenu(context),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: BC.pink,
            ),
            child: GridView.builder(
              padding: const EdgeInsets.all(Sizes.s12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: Sizes.s8,
                mainAxisSpacing: Sizes.s8,
              ),
              itemCount: 8, // Number of items
              itemBuilder: (context, index) {
                final itemModel = _bloc.getModelGuide(index);
                return Container(
                  decoration: BoxDecoration(
                    color: BC.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(AppRadius.r30),
                    border: Border.all(
                      color: BC.white.withOpacity(1),
                      width: 1,
                    ),
                  ),
                  child: InkWell(
                    onTap: () =>
                        itemModel.guideOnTapGroupEnum.getOnTap(context),
                    child: Platform.isIOS
                        ? Column(
                            children: [
                              itemModel.guideImageGroupEnum.getImage().image(
                                    height: height < 840
                                        ? height / 5.5
                                        : height / 6.5,
                                    width: width / 2.5,
                                  ),
                              Text(
                                itemModel.guideTextGroupEnum.getTitle(s),
                                style: BS.tex21Text.apply(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 20.0),
                                child: itemModel.guideImageGroupEnum
                                    .getImage()
                                    .image(),
                              ),
                              const Spacer(),
                              Text(
                                itemModel.guideTextGroupEnum.getTitle(s),
                                style: BS.tex21Text.apply(color: BC.lightGray),
                                textAlign: TextAlign.center,
                              ),
                              Space.h10,
                            ],
                          ),
                  ),
                );
              },
            ),
          ),
          activateFullSafeArea: false,
        );
      },
    );
  }
}
