import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideEyesInstruction extends StatelessWidget {
  const GuideEyesInstruction({super.key});

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
            Assets.images.guideInfo.eyesGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(title: s.overview, subTitle: s.theEyesAreFocal),
        Space.h32,
        GuideInfoListText(
          titleList: s.skincareSecond,
          items: [
            ListItem(
              text: s.secondHydration,
              subText: s.utilizeEyeCreams,
            ),
            ListItem(
                text: s.protection, subText: s.dailyApplicationOfSunscreen),
            ListItem(
              text: s.gentleRemoval,
              subText: s.alwaysRemoveEye,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.circles,
          items: [
            ListItem(
              text: s.coolCompresses,
              subText: s.applyCoolCompresses,
            ),
            ListItem(text: s.vitaminCSerum, subText: s.aSerumWithVitaminC),
            ListItem(text: s.adequateRest, subText: s.ensureYouAreGetting),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.exercises,
          items: [
            ListItem(
              text: s.palming,
              subText: s.rubYourHands,
            ),
            ListItem(
              text: s.focusChanging,
              subText: s.shiftYourFocus,
            ),
            ListItem(
              text: s.blinking,
              subText: s.regularBlinking,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.brows,
          items: [
            ListItem(text: s.regularTrimming, subText: s.keepYourEyeBrows),
            ListItem(text: s.browGel, subText: s.useAClear),
            ListItem(text: s.growthSerums, subText: s.ifYouHaveSparse),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.lashes,
          items: [
            ListItem(text: s.lashSerum, subText: s.applyAnEyeLash),
            ListItem(text: s.gentleCurling, subText: s.useAnEyeLash),
            ListItem(text: s.properRemoval, subText: s.beCautious),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(title: s.conclusion, subTitle: s.thisGuide),
      ],
    );
  }
}
