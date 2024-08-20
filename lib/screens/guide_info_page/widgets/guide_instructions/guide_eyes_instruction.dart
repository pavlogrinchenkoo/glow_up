import 'package:flutter/cupertino.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';
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
          titleList: s.skincareAroundTheEyes,
          items: [
            ListItem(
              text: s.eyeCream,
              subText: s.eyeCreamDescription,
            ),
            ListItem(text: s.puffiness, subText: s.puffinessDescription),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.eyebrowGrooming,
          items: [
            ListItem(
              text: s.shape,
              subText: s.shapeDescription,
            ),
            ListItem(text: s.tinting, subText: s.tintingDescription),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.eyeMakeup,
          items: [
            ListItem(
              text: s.eyeshadow,
              subText: s.eyeshadowDescription,
            ),
            ListItem(
              text: s.eyeliner,
              subText: s.eyelinerDescription,
            ),
            ListItem(
              text: s.mascara,
              subText: s.mascaraDescription,
            ),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.lashes,
          items: [
            ListItem(text: s.curling, subText: s.curlingDescription),
            ListItem(text: s.falseLashes, subText: s.falseLashesDescription),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.eyeHealth,
          items: [
            ListItem(text: s.rest, subText: s.restDescription),
            ListItem(
                text: s.blueLightProtection,
                subText: s.blueLightProtectionDescription),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.enhancingEyeShape,
          items: [
            ListItem(text: s.almondEyes, subText: s.almondEyesDescription),
            ListItem(text: s.roundEyes, subText: s.roundEyesDescription),
            ListItem(text: s.hoodedEyes, subText: s.hoodedEyesDescription),
          ],
        ),
        Space.h16,
        GuideInfoListText(
          titleList: s.contactLenses,
          items: [
            ListItem(
                text: s.coloredLenses, subText: s.coloredLensesDescription),
            ListItem(text: s.prescription, subText: s.prescriptionDescription),
          ],
        ),
      ],
    );
  }
}
