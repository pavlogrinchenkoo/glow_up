import 'package:json_annotation/json_annotation.dart';
import 'package:glow_up/generated/assets.gen.dart';
import 'package:glow_up/generated/l10n.dart';

part 'dto.g.dart';

@JsonSerializable()
class SubscribeModel {
  SubscribeTextGroupEnum subscribeTextGroupEnum;
  SubscribePhotoGroupEnum subscribePhotoGroupEnum;

  SubscribeModel({
    required this.subscribeTextGroupEnum,
    required this.subscribePhotoGroupEnum,
  });

  factory SubscribeModel.fromJson(Map<String, dynamic> json) =>
      _$SubscribeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubscribeModelToJson(this);
}

enum SubscribeTextGroupEnum {
  first,
  second,
  third,
  fourth;

  const SubscribeTextGroupEnum();

  String getTitle(S s) {
    switch (this) {
      case first:
        return s.personalRating;
      case second:
        return s.facialSkin;
      case third:
        return s.improvementGuide;
      case fourth:
        return s.aiDriven;
      default:
        return "";
    }
  }
}

enum SubscribePhotoGroupEnum {
  first,
  second,
  third,
  fourth;

  const SubscribePhotoGroupEnum();

  AssetGenImage getImage() {
    switch (this) {
      case first:
        return Assets.images.subscription.firstCardSub;
      case second:
        return Assets.images.subscription.secondCardSub;
      case third:
        return Assets.images.subscription.thirdCardSub;
      case fourth:
        return Assets.images.subscription.fourthCardSub;
      default:
        return Assets.images.subscription.firstCardSub;
    }
  }
}
