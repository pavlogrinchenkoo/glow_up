import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideGroomingInstruction extends StatelessWidget {
  const GuideGroomingInstruction({super.key});

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
            Assets.images.guideInfo.groomingGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(
          title: s.overview,
          subTitle: s.groomingIsNotJust,
        ),
        Space.h32,
        GuideInfoListText(
          titleList: s.titleListShaving,
          items: [
            ListItem(
              text: s.prepYourSkinTitle,
              subText: s.prepYourSkin,
            ),
            ListItem(
              text: s.chooseQualityToolsTitle,
              subText: s.chooseQualityTools,
            ),
            ListItem(
              text: s.useProperTechniqueTitle,
              subText: s.useProperTechnique,
            ),
            ListItem(
              text: s.aftercareTitle,
              subText: s.aftercare,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListSkincare,
          items: [
            ListItem(
              text: s.dailyRoutineTitle,
              subText: s.dailyRoutine,
            ),
            ListItem(
              text: s.exfoliateTitle,
              subText: s.exfoliate,
            ),
            ListItem(
              text: s.secondHydration,
              subText: s.drinkPlenty,
            ),
            ListItem(
              text: s.professionalCareTitle,
              subText: s.professionalCare,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListHaircare,
          items: [
            ListItem(
              text: s.washingTitle,
              subText: s.washing,
            ),
            ListItem(
              text: s.conditioningTitle,
              subText: s.conditioning,
            ),
            ListItem(
              text: s.stylingProductsTitle,
              subText: s.stylingProducts,
            ),
            ListItem(
              text: s.regularTrimsTitle,
              subText: s.regularTrims,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListFragrance,
          items: [
            ListItem(
              text: s.choosingAFragranceTitle,
              subText: s.choosingAFragrance,
            ),
            ListItem(
              text: s.applicationTitle,
              subText: s.application,
            ),
            ListItem(
              text: s.storageTitle,
              subText: s.storage,
            ),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(
          title: s.conclusion,
          subTitle: s.groomingIsEssential,
        ),
      ],
    );
  }
}
