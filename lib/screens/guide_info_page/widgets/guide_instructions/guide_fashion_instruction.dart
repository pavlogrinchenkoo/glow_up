import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_conclusion.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideFashionInstruction extends StatelessWidget {
  const GuideFashionInstruction({Key? key}) : super(key: key);

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
            Assets.images.guideInfo.fashionGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(
          title: s.overview,
          subTitle: s.fashionIsExplored,
        ),
        Space.h32,
        GuideInfoListText(
          titleList: s.trends,
          items: [
            ListItem(
              text: s.trends,
              subText: s.stayInformed,
            ),
            ListItem(
              text: s.trends,
              subText: s.experimentation,
            ),
            ListItem(
              text: s.trends,
              subText: s.personalization,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.fit,
          items: [
            ListItem(
              text: s.fit,
              subText: s.understandingYourBodyShape,
            ),
            ListItem(
              text: s.fit,
              subText: s.investInTailoring,
            ),
            ListItem(
              text: s.fit,
              subText: s.focusAreas,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.accessories,
          items: [
            ListItem(
              text: s.accessories,
              subText: s.transformYourOutfit,
            ),
            ListItem(
              text: s.accessories,
              subText: s.chooseQuality,
            ),
            ListItem(
              text: s.accessories,
              subText: s.ruleOfBalance,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: "Colors",
          items: [
            ListItem(
              text: s.colors,
              subText: s.understandTheColorWheel,
            ),
            ListItem(
              text: s.colors,
              subText: s.identifyYourPersonalColorPalette,
            ),
            ListItem(
              text: s.colors,
              subText: s.experimentWithColor,
            ),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(
          title: s.conclusion,
          subTitle: s.fashionIsEverEvolving,
        ),
      ],
    );
  }
}
