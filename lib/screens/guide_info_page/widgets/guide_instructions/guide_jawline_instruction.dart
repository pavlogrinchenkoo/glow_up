import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
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
          titleList: s.facialExercises,
          items: [
            ListItem(
              text: s.jawlineExercises,
              subText: s.jawlineExercisesDescription,
            ),
            ListItem(
              text: s.consistency,
              subText: s.consistencyDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.weightManagement,
          items: [
            ListItem(
              text: s.healthyDiet,
              subText: s.healthyDietDescription,
            ),
            ListItem(
              text: s.secondHydration,
              subText: s.hydrationDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.skincareGrooming,
          items: [
            ListItem(
              text: s.exfoliation,
              subText: s.exfoliationJaw,
            ),
            ListItem(
              text: s.beardShaping,
              subText: s.beardShapingDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.contouringJaw,
          items: [
            ListItem(
              text: s.makeupTechniques,
              subText: s.makeupTechniquesDescription,
            ),
            ListItem(
              text: s.highlighting,
              subText: s.highlightingDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.posture,
          items: [
            ListItem(
              text: s.correctPosture,
              subText: s.correctPostureDescription,
            ),
            ListItem(
              text: s.avoidSlouching,
              subText: s.avoidSlouchingDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.nonSurgicalEnhancements,
          items: [
            ListItem(
              text: s.dermalFillers,
              subText: s.dermalFillersDescription,
            ),
            ListItem(
              text: s.skinTighteningTreatments,
              subText: s.skinTighteningTreatmentsDescription,
            ),
          ],
        ),
      ],
    );
  }
}
