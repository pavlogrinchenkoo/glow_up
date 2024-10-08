import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
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
          titleList: s.understandingYourBodyShapeFash,
          items: [
            ListItem(
              text: s.bodyTypes,
              subText: s.bodyTypesDescription,
            ),
            ListItem(
              text: s.proportions,
              subText: s.proportionsDescription,
            ),
            ListItem(
              text: s.trends,
              subText: s.personalization,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.buildingAWardrobe,
          items: [
            ListItem(
              text: s.basics,
              subText: s.basicsDescription,
            ),
            ListItem(
              text: s.versatility,
              subText: s.versatilityDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.colorsPatterns,
          items: [
            ListItem(
              text: s.colorCoordination,
              subText: s.colorCoordinationDescription,
            ),
            ListItem(
              text: s.patterns,
              subText: s.patternsDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.accessorizing,
          items: [
            ListItem(
              text: s.jewelry,
              subText: s.jewelryDescription,
            ),
            ListItem(
              text: s.bagsShoes,
              subText: s.bagsShoesDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.personalStyle,
          items: [
            ListItem(
              text: s.experimentationFash,
              subText: s.experimentationDescription,
            ),
            ListItem(
              text: s.signaturePieces,
              subText: s.signaturePiecesDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.shoppingTips,
          items: [
            ListItem(
              text: s.qualityOverQuantity,
              subText: s.qualityOverQuantityDescription,
            ),
            ListItem(
              text: s.fitTailoring,
              subText: s.fitTailoringDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.fashionTrends,
          items: [
            ListItem(
              text: s.stayingCurrent,
              subText: s.stayingCurrentDescription,
            ),
            ListItem(
              text: s.classicPieces,
              subText: s.classicPiecesDescription,
            ),
          ],
        ),
      ],
    );
  }
}
