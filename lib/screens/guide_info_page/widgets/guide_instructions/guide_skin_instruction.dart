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
        GuideInfoOverview(title: s.overview, subTitle: s.skinHealthCanvas),
        Space.h32,
        GuideInfoListText(
          titleList: s.skinTypeIdentification,
          items: [
            ListItem(
              text: s.understandYourSkin,
              subText: s.understandYourSkinText,
            ),
            ListItem(
              text: s.seasonalChanges,
              subText: s.seasonalChangesText,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.dailySkincare,
          items: [
            ListItem(
              text: s.cleansing,
              subText: s.cleansingText,
            ),
            ListItem(
              text: s.toning,
              subText: s.toningText,
            ),
            ListItem(
              text: s.moisturizing,
              subText: s.moisturizingText,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.exfoliationAndMasks,
          items: [
            ListItem(
              text: s.exfoliation,
              subText: s.exfoliationText,
            ),
            ListItem(
              text: s.faceMasks,
              subText: s.incorporateFaceMasks,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.sunProtection,
          items: [
            ListItem(
              text: s.sdfDaily,
              subText: s.sdfDailyText,
            ),
            ListItem(
              text: s.broadSpectrum,
              subText: s.broadSpectrumText,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.targetedTreatments,
          items: [
            ListItem(
              text: s.serums,
              subText: s.serumsUseText,
            ),
            ListItem(
              text: s.spotTreatments,
              subText: s.spotTreatmentsUseText,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.professionalTreatments,
          items: [
            ListItem(
              text: s.facials,
              subText: s.facialsText,
            ),
            ListItem(
              text: s.dermatologistVisits,
              subText: s.dermatologistVisitsText,
            ),
          ],
        ),
      ],
    );
  }
}
