import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:glow_up/api/default_analysis/dto.dart';
import 'package:glow_up/api/invite_friend/dto.dart';
import 'package:glow_up/api/pro_analysis/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/utils/session.dart';
import 'package:path/path.dart';

class Requests {
  final storage = GetStorage();
  final session = Session();

  Future<DefaultAnalysisModel> sendPostDefaultWithFileRequest(File file) async {
    const String url = 'https://api-us.faceplusplus.com/facepp/v3/detect';
    Dio dio = Dio();

    try {
      String fileName = basename(file.path);
      FormData formData = FormData.fromMap({
        "api_key": "GsJrv6QY5YESfBZSA7Cqp5WaYM2rKZUL",
        "api_secret": "q52np2QmEsn0yJPBkHu7UU4v7A4GoMf8",
        "image_file":
            await MultipartFile.fromFile(file.path, filename: fileName),
        "return_landmark": 1,
        "return_attributes":
            "gender,age,emotion,facequality,beauty,eyestatus,skinstatus",
      });

      Response response = await dio.post(
        url,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data["faces"].first;
        await storage.write(session.defaultAnalysisModel, data);
       return DefaultAnalysisModel.fromJson(data);
      } else {
        log("Request failed with status: ${response.statusCode}");
       return DefaultAnalysisModel.fromJson({});
      }
    } catch (e) {
      if (e is DioException) {
        final responseMessage = e.response?.data;
        log("Dio error occurred: $responseMessage");
      } else {
        log("General error occurred: $e");
      }
     return DefaultAnalysisModel.fromJson({});
    }
  }

  Future<ProAnalysisModel> sendPostProRequest(String? imagePath) async {
    const String url =
        'https://www.ailabapi.com/api/portrait/analysis/skin-analysis-pro';
    const String apiKey =
        'u0cOvAnFXy6JtjhHoEr0dHMibWFauKBeVs17m8iLI5RTCwqvxWIzEkb95zlTChN6';
    Dio dio = Dio();

    const String returnMaps =
        "texture_enhanced_blackheads,texture_enhanced_pores,brown_area,"
        "roi_outline_map,red_area,texture_enhanced_lines";

    try {
      if (imagePath == null) {
        log("Image path not found in GetStorage");
        return ProAnalysisModel.fromJson({});
      }

      File imageFile = File(imagePath);
      String formattedDate =
          DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      String uniqueFileName = "image_$formattedDate/${imageFile.path}}";

      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(imageFile.path,
            filename: uniqueFileName),
        "return_maps": returnMaps,
      });

      Response response = await dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
            'ailabapi-api-key': apiKey,
          },
        ),
        data: formData,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data["result"];
        return ProAnalysisModel.fromJson(data);
      } else {
        log("Request failed with status: ${response.statusCode}");
        return ProAnalysisModel.fromJson({});
      }
    } catch (e) {
      log("Error occurred: $e");
      return ProAnalysisModel.fromJson({});
    }
  }

  Future<InviteFriendModel> getInviteFriendPersonalCode(String uniqueId) async {
    const String url =
        "http://Promo-API.eba-cbmpz2pd.eu-north-1.elasticbeanstalk.com/promocode/createUserPromocode";
    Dio dio = Dio();
    try {
      Response response = await dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "userId": uniqueId,
        },
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        return InviteFriendModel.fromJson(data);
      } else {
        log("Request failed with status: ${response.statusCode}");
        return InviteFriendModel.fromJson({});
      }
    } catch (e) {
      log("Error occurred: $e");
      return InviteFriendModel.fromJson({});
    }
  }

  Future<InviteFriendModelCodeEnum> activateInviteFriendCode(
      String uniqueId, String code, S s) async {
    const String url =
        "http://Promo-API.eba-cbmpz2pd.eu-north-1.elasticbeanstalk.com/promocode/activatePromocode";
    Dio dio = Dio();
    try {
      Response response = await dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "userId": uniqueId,
          "code": code,
        },
      );

      return InviteFriendModelCodeEnum.activate;
    } catch (e) {
      final error = e as DioException;
      final responseMessage = error.response?.data;
      log("Error occurred: $e");
      if (responseMessage == InviteFriendModelCodeEnum.exit.getTitle(s)) {
        return InviteFriendModelCodeEnum.exit;
      } else if (responseMessage ==
          InviteFriendModelCodeEnum.notFound.getTitle(s)) {
        return InviteFriendModelCodeEnum.notFound;
      }
      return InviteFriendModelCodeEnum.notFound;
    }
  }

  Future<bool> checkActivateInviteFriendCode(String uniqueId) async {
    const String url =
        "http://Promo-API.eba-cbmpz2pd.eu-north-1.elasticbeanstalk.com/promocode/geReward";
    Dio dio = Dio();
    try {
      Response response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "userId": uniqueId,
        },
      );
      return true;
    } catch (e) {
      log("Error occurred: $e");
      return false;
    }
  }
}
