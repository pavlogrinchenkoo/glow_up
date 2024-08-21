import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/api/guide/dto.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/bloc.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_instructions/guide_face_instruction.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/custom_stream_builder.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:glow_up/widgets/custom_app_bar.dart';
import 'package:glow_up/widgets/custom_scaffold.dart';

@RoutePage()
class GuideInfoPage extends StatefulWidget {
  final EnumCheckGuideModel enumCheckGuideModel;

  const GuideInfoPage({
    Key? key,
    required this.enumCheckGuideModel,
  }) : super(key: key);

  @override
  State<GuideInfoPage> createState() => _GuideInfoPageState();
}

class _GuideInfoPageState extends State<GuideInfoPage> {
  final GuideInfoBloc _bloc = GuideInfoBloc();

  @override
  void initState() {
    _bloc.getGuideInstruction(widget.enumCheckGuideModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    return CustomStreamBuilder(
      bloc: _bloc,
      builder: (context, ScreenState state) {
        return CustomScaffold(
          appBar: CustomAppBar(
            title: _bloc.getTitleAppBar(widget.enumCheckGuideModel, s),
            useLeftButton: true,
            useRightButton: true,
            rightIcon: Assets.images.settings,
            rightOnClick: () => _bloc.toMenu(context),
            leftIcon: Assets.images.back,
            leftOnClick: () => _bloc.back(context),
            backgroundWhiteColor: BC.white,
            textColor: BC.lightGray,
          ),
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: BC.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: Sizes.s20),
            child: SingleChildScrollView(
              child: state.widgetInstruction ?? const GuideFaceInstruction(),
            ),
          ),
          activateFullSafeArea: false,
          backgroundColor: BC.white,
        );
      },
    );
  }
}
