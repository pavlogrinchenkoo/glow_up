import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
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
          subTitle: s.enhancingFacial,
        ),
        Space.h32,
        GuideInfoListText(titleList: s.facialSymmetry, items: [
          ListItem(
            text: s.balance,
            subText: s.balanceSymmetry,
          ),
          ListItem(
            text: s.exercises,
            subText: s.exerciseFacial,
          ),
          ListItem(
            text: s.contouring,
            subText: s.contouringText,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.facialHair, items: [
          ListItem(
            text: s.shapingEyebrows,
            subText: s.wellGroomedEyebrows,
          ),
          ListItem(
            text: s.hairline,
            subText: s.hairlineText,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.facialFeaturesEnhancement, items: [
          ListItem(
            text: s.jawline,
            subText: s.jawlineText,
          ),
          ListItem(
            text: s.cheekbones,
            subText: s.cheekbonesHighlight,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.personalizedSkincare, items: [
          ListItem(
            text: s.skinType,
            subText: s.skinTypeText,
          ),
          ListItem(
            text: s.targetedTreatmentsFace,
            subText: s.targetedTreatmentsText,
          ),
        ]),
        Space.h16,
        GuideInfoListText(titleList: s.dietAndHydration, items: [
          ListItem(
            text: s.nutrition,
            subText: s.nutritionText,
          ),
          ListItem(
            text: s.secondHydration,
            subText: s.secondHydrationText,
          ),

        ]),
      ],
    );
  }
}
