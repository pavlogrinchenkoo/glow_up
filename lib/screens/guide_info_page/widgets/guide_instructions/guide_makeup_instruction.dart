import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_list_text.dart';
import 'package:glow_up/screens/guide_info_page/widgets/guide_info_overview.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideMakeupInstruction extends StatelessWidget {
  const GuideMakeupInstruction({super.key});

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
            Assets.images.guideInfo.makeupGuideInfo.path,
            height: height < 840 ? height / 3 : height / 3.7,
            fit: BoxFit.cover,
          ),
        ),
        Space.h16,
        GuideInfoOverview(
          title: s.overview,
          subTitle: s.makeupOverview,
        ),
        Space.h32,
        GuideInfoListText(
          titleList: s.foundationBaseMakeup,
          items: [
            ListItem(
              text: s.choosingTheRightFoundation,
              subText: s.choosingTheRightFoundationDescription,
            ),
            ListItem(
              text: s.undertones,
              subText: s.undertonesDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.eyeMakeup,
          items: [
            ListItem(
              text: s.eyeshadow,
              subText: s.eyeshadowDescriptionMakeup,
            ),
            ListItem(
              text: s.dayVsNightLooks,
              subText: s.dayVsNightLooksDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.contouringHighlighting,
          items: [
            ListItem(
              text: s.contouringMakeup,
              subText: s.contouringDescription,
            ),
            ListItem(
              text: s.blending,
              subText: s.blendingDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.blushBronzer,
          items: [
            ListItem(
              text: s.blush,
              subText: s.blushDescription,
            ),
            ListItem(
              text: s.bronzer,
              subText: s.bronzerDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.lips,
          items: [
            ListItem(
              text: s.lipLiner,
              subText: s.lipLinerDescription,
            ),
            ListItem(
              text: s.lipstick,
              subText: s.lipstickDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.settingYourMakeup,
          items: [
            ListItem(
              text: s.settingSpray,
              subText: s.settingSprayDescription,
            ),
            ListItem(
              text: s.touchUps,
              subText: s.touchUpsDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.skinPreparation,
          items: [
            ListItem(
              text: s.primer,
              subText: s.primerDescription,
            ),
            ListItem(
              text: s.spfProtection,
              subText: s.spfProtectionDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.makeupRemoval,
          items: [
            ListItem(
              text: s.cleansingMakeup,
              subText: s.cleansingDescription,
            ),
            ListItem(
              text: s.toningMoisturizing,
              subText: s.toningMoisturizingDescription,
            ),
          ],
        ),
      ],
    );
  }
}
