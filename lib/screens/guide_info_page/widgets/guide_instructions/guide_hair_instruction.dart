import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideHairInstruction extends StatelessWidget {
  const GuideHairInstruction({super.key});

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
            Assets.images.guideInfo.hairGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(title: s.overview, subTitle: s.navigatingTheWorld),
        Space.h32,
        GuideInfoListText(
          titleList: s.cleansing,
          items: [
            ListItem(
              text: s.frequency,
              subText: s.tailorYourWashingFrequency,
            ),
            ListItem(
              text: s.choosingShampoo,
              subText: s.selectAShampoo,
            ),
            ListItem(
              text: s.technique,
              subText: s.focusOnCleansing,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.conditioningTitle,
          items: [
            ListItem(
              text: s.applicationTitle,
              subText: s.applyConditioner,
            ),
            ListItem(
              text: s.typesOfConditioners,
              subText: s.useLeaveInConditioners,
            ),
            ListItem(
              text: s.rinseThoroughly,
              subText: s.ensureNoResidue,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.styling,
          items: [
            ListItem(
              text: s.heatProtection,
              subText: s.alwaysUseAHeatProtectant,
            ),
            ListItem(
              text: s.embraceNaturalTexture,
              subText: s.experimentWithProducts,
            ),
            ListItem(
              text: s.minimalistApproach,
              subText: s.optForHairstyles,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.thinning,
          items: [
            ListItem(
              text: s.earlyIntervention,
              subText: s.startTreatments,
            ),
            ListItem(
              text: s.gentleHandling,
              subText: s.avoidTightHairstyles,
            ),
            ListItem(
              text: s.professionalAdvice,
              subText: s.consultADermatologist,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.scalpCare,
          items: [
            ListItem(
              text: s.regularExfoliation,
              subText: s.useAScalpScrub,
            ),
            ListItem(
              text: s.moisturize,
              subText: s.ifYourScalpIsDry,
            ),
            ListItem(
              text: s.sunProtection,
              subText: s.protectYourScalpFromUVDamage,
            ),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(title: s.conclusion, subTitle: s.yourHairsHealth),
      ],
    );
  }
}
