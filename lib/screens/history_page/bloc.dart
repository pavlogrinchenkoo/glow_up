import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:glow_up/api/history/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:get_storage/get_storage.dart';
import 'package:glow_up/utils/spaces.dart';

class HistoryBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  HistoryBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();

  void init(BuildContext context) async {
    if (context.mounted) {
      final historyData = await storage.read(session.historyList);
      if (historyData != null) {
        List<HistoryModel> historyList = [];
        if (historyData is List<dynamic>) {
          if (historyData.isNotEmpty &&
              historyData.first is Map<String, dynamic>) {
            historyList = historyData
                .map((item) =>
                    HistoryModel.fromJson(item as Map<String, dynamic>))
                .toList();
          } else if (historyData.isNotEmpty &&
              historyData.first is HistoryModel) {
            historyList = historyData.cast<HistoryModel>();
          }
          setState(currentState.copyWith(historyList: historyList));
        } else {
          if (historyData != null) {
            try {
              historyList = [historyData];
              setState(currentState.copyWith(historyList: historyList));
            } catch (e) {
              log("Error create history list with single item: $e");
            }
          }
        }
      }
    }
  }

  Future<void> checkUploadLimitAnalyze(BuildContext context) async {
    final currentDate = DateTime.now();
    final lastUpdateDateStr = await storage.read(session.isLastUpdateDate);
    final isScannedSevenDays =
        await storage.read(session.isUseScannedSevenDays);

    if (lastUpdateDateStr == null || isScannedSevenDays == null) {
      await storage.write(
          session.isLastUpdateDate, currentDate.toIso8601String());
      await storage.write(session.isUseScannedSevenDays, false);
      context.router.push(OnboardingRoute(isUseFirstOnboarding: true));
    } else {
      final lastUpdateDate = DateTime.parse(lastUpdateDateStr);
      final difference = currentDate.difference(lastUpdateDate).inDays;
      if (difference >= 7) {
        await storage.write(
            session.isLastUpdateDate, currentDate.toIso8601String());
        await storage.write(session.isUseScannedSevenDays, false);
        context.router.push(OnboardingRoute(isUseFirstOnboarding: true));
      } else if (isScannedSevenDays == false) {
        showDialogUploadLimit(context);
      }
    }
  }

  void showDialogUploadLimit(BuildContext context) {
    final S s = S.of(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r20),
          ),
          backgroundColor: BC.salad,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: Sizes.s35,
                  right: Sizes.s35,
                  top: Sizes.s70,
                  bottom: Sizes.s50,
                ),
                child: Text(
                  s.uploadLimitDialog,
                  style: BS.showDialogText,
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.router.maybePop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void toMenu(BuildContext context) {
    context.router.maybePop(const MenuRoute());
  }
}

class ScreenState {
  final bool loading;
  final List<HistoryModel>? historyList;

  ScreenState({
    this.loading = false,
    this.historyList,
  });

  ScreenState copyWith({
    bool? loading,
    List<HistoryModel>? historyList,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      historyList: historyList ?? this.historyList,
    );
  }
}
