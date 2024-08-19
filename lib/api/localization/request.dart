import 'package:glow_up/api/localization/dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LocalizationRequest {
  CollectionReference localization =
      FirebaseFirestore.instance.collection('localization');

  Future<LocalizationModel> get(String locale) async {
    final res = await localization.doc(locale).get();
    return LocalizationModel.fromJson(res.data() as Map<String, dynamic>);
  }
}
