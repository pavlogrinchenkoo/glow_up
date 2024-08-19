import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideJawlineInstruction extends StatelessWidget {
  const GuideJawlineInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final S s = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.r20),
          child: Image.asset(
            Assets.images.guideInfo.jawlineGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(
          title: s.overview,
          subTitle: s.aDefinedJawline,
        ),
        Space.h32,
        GuideInfoListText(
          titleList: s.definition,
          items: [
            ListItem(
              text: s.skincare,
              subText: s.aWellMaintainedSkincareRoutine,
            ),
            ListItem(
              text: s.weightManagement,
              subText: s.reducingExcessBodyFat,
            ),
            ListItem(
              text: s.secondHydration,
              subText: s.adequateWaterIntake,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.contouring,
          items: [
            ListItem(
              text: s.makeup,
              subText: s.utilizeContouringTechniques,
            ),
            ListItem(
              text: s.beardStyling,
              subText: s.forThoseWhoCanGrowFacialHair,
            ),
            ListItem(
              text: s.hairstyling,
              subText: s.certainHairstylesCanVisuallyEnhance,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.exercises,
          items: [
            ListItem(
              text: s.chinTucks,
              subText: s.thisExerciseHelpsInStrengthening,
            ),
            ListItem(
              text: s.jawClenching,
              subText: s.clenchYourJawFor10Seconds,
            ),
            ListItem(
              text: s.neckCurls,
              subText: s.lieOnYourBackWithYourTonguePressed,
            ),
            ListItem(
              text: s.mewing,
              subText: s.practiceProperTonguePosture,
            ),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(
          title: s.conclusion,
          subTitle: s.improvingTheDefinitionAndContour,
        ),
      ],
    );
  }
}
