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
          subTitle: s.subTitleOverview,
        ),
        Space.h32,
        GuideInfoListText(
          titleList: s.titleListStrength,
          items: [
            ListItem(
              text: s.text1Strength,
              subText: s.subText1Strength,
            ),
            ListItem(
              text: s.text2Strength,
              subText: s.subText2Strength,
            ),
            ListItem(
              text: s.text3Strength,
              subText: s.subText3Strength,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListCardio,
          items: [
            ListItem(
              text: s.text1Cardio,
              subText: s.subText1Cardio,
            ),
            ListItem(
              text: s.text2Cardio,
              subText: s.subText2Cardio,
            ),
            ListItem(
              text: s.text3Cardio,
              subText: s.subText3Cardio,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListNutrition,
          items: [
            ListItem(
              text: s.text1Nutrition,
              subText: s.subText1Nutrition,
            ),
            ListItem(
              text: s.text2Nutrition,
              subText: s.subText2Nutrition,
            ),
            ListItem(
              text: s.text3Nutrition,
              subText: s.subText3Nutrition,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListRecovery,
          items: [
            ListItem(
              text: s.text1Recovery,
              subText: s.subText1Recovery,
            ),
            ListItem(
              text: s.text2Recovery,
              subText: s.subText2Recovery,
            ),
            ListItem(
              text: s.text3Recovery,
              subText: s.subText3Recovery,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.titleListFlexibility,
          items: [
            ListItem(
              text: s.text1Flexibility,
              subText: s.subText1Flexibility,
            ),
            ListItem(
              text: s.text2Flexibility,
              subText: s.subText2Flexibility,
            ),
            ListItem(
              text: s.text3Flexibility,
              subText: s.subText3Flexibility,
            ),
          ],
        ),
        Space.h16,
        GuideInfoConclusion(
          title: s.conclusion,
          subTitle: s.fitnessIsAMultifaceted,
        ),
      ],
    );
  }
}
