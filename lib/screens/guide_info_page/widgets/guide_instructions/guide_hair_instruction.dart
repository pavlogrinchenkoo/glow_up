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
        GuideInfoOverview(title: s.overview, subTitle: s.yourHairCrucial),
        Space.h32,
        GuideInfoListText(
          titleList: s.hairTypeIdentification,
          items: [
            ListItem(
              text: s.hairTexture,
              subText: s.hairTextureText,
            ),
            ListItem(
              text: s.porosity,
              subText: s.porosityText,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.shampooingAndConditioning,
          items: [
            ListItem(
              text: s.cleansing,
              subText: s.cleansingText,
            ),
            ListItem(
              text: s.conditioning,
              subText: s.conditioningText,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.hairTreatments,
          items: [
            ListItem(
              text: s.deepConditioning,
              subText: s.deepConditioningDescription,
            ),
            ListItem(
              text: s.leaveInTreatments,
              subText: s.leaveInTreatmentsDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.hairStyling,
          items: [
            ListItem(
              text: s.heatProtection,
              subText: s.heatProtectionDescription,
            ),
            ListItem(
              text: s.haircuts,
              subText: s.haircutsDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.hairColor,
          items: [
            ListItem(
              text: s.choosingAColor,
              subText: s.choosingAColorDescription,
            ),
            ListItem(
              text: s.maintenance,
              subText: s.maintenanceDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.scalpCare,
          items: [
            ListItem(
              text: s.exfoliation,
              subText: s.exfoliationDescription,
            ),
            ListItem(
              text: s.scalpMassages,
              subText: s.scalpMassagesDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.protectiveStyles,
          items: [
            ListItem(
              text: s.lowManipulationStyles,
              subText: s.lowManipulationStylesDescription,
            ),
            ListItem(
              text: s.nighttimeProtection,
              subText: s.nighttimeProtectionDescription,
            ),
          ],
        ),
      ],
    );
  }
}
