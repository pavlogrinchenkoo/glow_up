import 'package:json_annotation/json_annotation.dart';
import 'package:glow_up/generated/l10n.dart';

part 'dto.g.dart';

@JsonSerializable()
class InviteFriendModel {
  String? userId;
  String? promocode;

  InviteFriendModel({
    this.userId,
    this.promocode,
  });

  factory InviteFriendModel.fromJson(Map<String, dynamic> json) =>
      _$InviteFriendModelFromJson(json);

  Map<String, dynamic> toJson() => _$InviteFriendModelToJson(this);
}

enum InviteFriendModelCodeEnum {
  activate,
  exit,
  notFound;

  const InviteFriendModelCodeEnum();

  String getTitle(S s) {
    switch (this) {
      case activate:
        return s.promoCodeActivated;
      case exit:
        return s.promoCodeIsUsed;
      case notFound:
        return s.promoCodeNotFound;
      default:
        return s.promoCodeNotFound;
    }
  }
}
