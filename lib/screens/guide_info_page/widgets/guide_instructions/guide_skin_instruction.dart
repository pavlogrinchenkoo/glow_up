import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideSkinInstruction extends StatelessWidget {
  const GuideSkinInstruction({super.key});

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
            Assets.images.guideInfo.skinGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(title: s.overview, subTitle: s.skinHealthIsCritical),
        Space.h32,
        GuideInfoListText(
          titleList: s.hydration,
          items: [
            ListItem(
              text: s.importanceOfMoisturizing,
              subText: s.regardlessOfYourSkinType,
            ),
            ListItem(
              text: s.choosingTheRightMoisturizer,
              subText: s.lookForProductsThatMatch,
            ),
            ListItem(
              text: s.hydrationFromWithin,
              subText: s.drinkingEnoughWater,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.pigmentation,
          items: [
            ListItem(
              text: s.understandingHyperpigmentation,
              subText: s.causedByExcessMelaninProduction,
            ),
            ListItem(
              text: s.preventiveMeasures,
              subText: s.useABroadSpectrumSunscreen,
            ),
            ListItem(
              text: s.professionalTreatments,
              subText: s.forStubbornPigmentation,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.acne,
          items: [
            ListItem(
              text: s.gentleCleansing,
              subText: s.useAMildCleanser,
            ),
            ListItem(
              text: s.topicalTreatments,
              subText: s.overTheCounterProducts,
            ),
            ListItem(
              text: s.lifestyleFactors,
              subText: s.dietStressAndHygiene,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.aging,
          items: [
            ListItem(
              text: s.sunProtection,
              subText: s.uvExposureAcceleratesSkinAging,
            ),
            ListItem(
              text: s.retinoids,
              subText: s.theseVitaminADerivatives,
            ),
            ListItem(
              text: s.antioxidants,
              subText: s.productsContainingAntioxidants,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.texture,
          items: [
            ListItem(
              text: s.exfoliation,
              subText: s.regularExfoliationCanRemove,
            ),
            ListItem(
              text: s.secondHydration,
              subText: s.properlyHydratedSkinAppears,
            ),
            ListItem(
              text: s.professionalAdvice,
              subText: s.persistentTextureIssues,
            ),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(
          title: s.conclusion,
          subTitle: s.healthySkinIsABlend,
        ),
      ],
    );
  }
}
