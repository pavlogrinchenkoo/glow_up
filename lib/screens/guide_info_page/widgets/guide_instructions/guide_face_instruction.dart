import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideFaceInstruction extends StatelessWidget {
  const GuideFaceInstruction({super.key});

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
            Assets.images.guideInfo.faceGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(
          title: s.overview,
          subTitle: s.theFaceMostNoticed,
        ),
        Space.h32,
        GuideInfoListText(titleList: s.eyes, items: [
          ListItem(
            text: s.skincare,
            subText: s.skincareEyes,
          ),
          ListItem(
            text: s.exercise,
            subText: s.exerciseEyes,
          ),
          ListItem(
            text: s.hydration,
            subText: s.hydrationEyes,
          ),
          ListItem(
            text: s.rest,
            subText: s.restEyes,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.mouth, items: [
          ListItem(
            text: s.lipCare,
            subText: s.lipCareText,
          ),
          ListItem(
            text: s.teethHealth,
            subText: s.teethHealthText,
          ),
          ListItem(
            text: s.facialExercises,
            subText: s.facialExercisesMouth,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.cheekbones, items: [
          ListItem(
            text: s.skincare,
            subText: s.skincareCheekbones,
          ),
          ListItem(
            text: s.facialExercises,
            subText: s.facialExercisesCheekbones,
          ),
          ListItem(
            text: s.diet,
            subText: s.dietCheekbones,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.nose, items: [
          ListItem(
            text: s.skincare,
            subText: s.skincareNose,
          ),
          ListItem(
            text: s.makeup,
            subText: s.groomingNose,
          ),
          ListItem(
            text: s.protection,
            subText: s.protectionNose,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.forehead, items: [
          ListItem(
            text: s.secondHydration,
            subText: s.hydrationForehead,
          ),
          ListItem(
            text: s.sunProtection,
            subText: s.sunProtectionForehead,
          ),
          ListItem(
            text: s.facialExercises,
            subText: s.facialExercisesForehead,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.eyebrows, items: [
          ListItem(
            text: s.makeup,
            subText: s.groomingEyebrows,
          ),
          ListItem(
            text: s.nourishment,
            subText: s.nourishmentEyebrows,
          ),
          ListItem(
            text: s.styling,
            subText: s.stylingEyebrows,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.ears, items: [
          ListItem(
            text: s.hygiene,
            subText: s.hygieneEars,
          ),
          ListItem(
            text: s.moisturize,
            subText: s.moisturizeEars,
          ),
          ListItem(
            text: s.makeup,
            subText: s.groomingEars,
          ),
        ]),
        Space.h16,
        GuideInfoConclusion(
          title: s.conclusion,
          subTitle: s.thisGuideCurated,
        ),
      ],
    );
  }
}
