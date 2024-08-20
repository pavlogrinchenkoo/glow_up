import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideFitnessInstruction extends StatelessWidget {
  const GuideFitnessInstruction({super.key});

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
            Assets.images.guideInfo.fitnessGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(
          title: s.overview,
          subTitle: s.fitnessOverview,
        ),
        Space.h32,
        GuideInfoListText(
          titleList: s.cardioWorkouts,
          items: [
            ListItem(
              text: s.heartHealth,
              subText: s.heartHealthDescription,
            ),
            ListItem(
              text: s.fatLoss,
              subText: s.fatLossDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.strengthTraining,
          items: [
            ListItem(
              text: s.muscleBuilding,
              subText: s.muscleBuildingDescription,
            ),
            ListItem(
              text: s.coreStrength,
              subText: s.coreStrengthDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.flexibilityMobility,
          items: [
            ListItem(
              text: s.stretching,
              subText: s.stretchingDescription,
            ),
            ListItem(
              text: s.mobilityDrills,
              subText: s.mobilityDrillsDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.dietNutrition,
          items: [
            ListItem(
              text: s.balancedDiet,
              subText: s.balancedDietDescription,
            ),
            ListItem(
              text: s.secondHydration,
              subText: s.hydrationDescriptionFit,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.recoveryRest,
          items: [
            ListItem(
              text: s.restDays,
              subText: s.restDaysDescription,
            ),
            ListItem(
              text: s.sleep,
              subText: s.sleepDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.consistencyMotivation,
          items: [
            ListItem(
              text: s.setGoals,
              subText: s.setGoalsDescription,
            ),
            ListItem(
              text: s.variety,
              subText: s.varietyDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.professionalGuidance,
          items: [
            ListItem(
              text: s.personalTrainer,
              subText: s.personalTrainerDescription,
            ),
            ListItem(
              text: s.groupClasses,
              subText: s.groupClassesDescription,
            ),
          ],
        ),
      ],
    );
  }
}
