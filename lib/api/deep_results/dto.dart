import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';

// part 'dto.g.dart';

// @JsonSerializable()
// class DeepModel {
//   DeepTextGroupEnum deepTextGroupEnum;
//   DeepTitleGroupEnum deepTitleGroupEnum;
//   DeepPhotoGroupEnum deepPhotoGroupEnum;
//
//   DeepModel({
//     required this.deepTextGroupEnum,
//     required this.deepTitleGroupEnum,
//     required this.deepPhotoGroupEnum,
//   });
//
//   factory DeepModel.fromJson(Map<String, dynamic> json) =>
//       _$DeepModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$DeepModelToJson(this);
// }

enum DeepGetNumberResultsEnum {
  first,
  second,
  third,
  fourth,
  fifth,
  sixth,
  seventh;

  const DeepGetNumberResultsEnum();

  int getNumber() {
    switch (this) {
      case first:
        return 1;
      case second:
        return 2;
      case third:
        return 3;
      case fourth:
        return 4;
      case fifth:
        return 5;
      case sixth:
        return 6;
      case seventh:
        return 7;
      default:
        return 1;
    }
  }
}

enum DeepTitleGroupEnum {
  first,
  second,
  third,
  fourth;

  const DeepTitleGroupEnum();

  String getTitleText(S s) {
    switch (this) {
      case first:
        return s.getAnInDepthAnalysis;
      case second:
        return s.getAnInDepthAnalysis;
      case third:
        return s.getAnInDepthAnalysis;
      case fourth:
        return s.getAnInDepthAnalysis;
      default:
        return "";
    }
  }
}

enum DeepPhotoGroupEnum {
  first,
  second,
  third,
  fourth;

  const DeepPhotoGroupEnum();

  AssetGenImage getImage() {
    switch (this) {
      case first:
        return Assets.images.deepScanning.firstCardScanning;
      case second:
        return Assets.images.deepScanning.secondCardScanning;
      case third:
        return Assets.images.deepScanning.thirdCardScanning;
      case fourth:
        return Assets.images.deepScanning.fourthCardScanning;
      default:
        return Assets.images.deepScanning.firstCardScanning;
    }
  }
}
