import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:glow_up/api/subscribe/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/utils/notifi_service.dart';
import 'package:glow_up/utils/session.dart';

import 'package:glow_up/utils/bloc_base.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SubscriptionBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  SubscriptionBloc() {
    setState(ScreenState());
  }

  final List<String> ids = [
    "looksmax_weekly_4.99",
    "looksmax_4.99_week",
    "sub3",
  ];
  String subscriptionId = Platform.isAndroid
      ? "looksmax_4.99_week:looksmax-4-99-week"
      : "looksmax_weekly_4.99";
  final storage = GetStorage();
  final session = Session();

  Future<void> initialize() async {
    List<StoreProduct> products = await Purchases.getProducts(ids);
    setState(currentState.copyWith(products: products));
    createListSubscribeModel();
  }

  Future<void> buyProduct(BuildContext context) async {
    try {
      // await storage.write(session.isUserDisableBlur, true);
      // await storage.write(session.isUserSubscribed, true);
      // context.router.push(ResultsRoute(activateSheet: false));
      setState(currentState.copyWith(showCircularProgress: true));
      CustomerInfo customerInfo =
          await Purchases.purchaseStoreProduct(currentState.storeProduct!);
      setState(currentState.copyWith(showCircularProgress: false));
      checkCustomerInfo(customerInfo, context, isLog: true);
    } catch (e) {
      setState(currentState.copyWith(showCircularProgress: false));
      log("Error buy sub $e");
    }
  }

  bool checkCustomerInfo(CustomerInfo customerInfo, BuildContext context,
      {bool isLog = false}) {
    bool hasSubscribe = customerInfo.activeSubscriptions.isNotEmpty == true;
    saveSubscribe(hasSubscribe, context);

    return hasSubscribe;
  }

  Future<void> saveSubscribe(bool hasSubscribe, BuildContext context) async {
    await storage.write(session.isUserSubscribed, hasSubscribe);
    if (hasSubscribe) {
      try {
        await storage.write(session.isUserDisableBlur, true);
        await NotificationService()
            .scheduleSubscriptionNotifications(false, S.of(context));
        await NotificationService()
            .scheduleDeepNotifications(true, S.of(context));
      } catch (e) {
        log("Error get notification: $e");
      }
      context.router.push(ResultsRoute(activateSheet: false));
    }
  }

  restorePurchase(BuildContext context) async {
    setState(currentState.copyWith(showCircularProgress: true));
    CustomerInfo customerInfo =
        await Purchases.restorePurchases().onError((error, stackTrace) {
      return Purchases.getCustomerInfo();
    });
    setState(currentState.copyWith(showCircularProgress: false));
    checkCustomerInfo(customerInfo, context);
  }

  void getProduct() {
    for (var product in currentState.products) {
      if (product.identifier == subscriptionId) {
        setState(currentState.copyWith(storeProduct: product));
      }
    }
  }

  void createListSubscribeModel() {
    List<SubscribeModel> listSubscribeModel = [
      SubscribeModel(
          subscribeTextGroupEnum: SubscribeTextGroupEnum.first,
          subscribePhotoGroupEnum: SubscribePhotoGroupEnum.first),
      SubscribeModel(
          subscribeTextGroupEnum: SubscribeTextGroupEnum.second,
          subscribePhotoGroupEnum: SubscribePhotoGroupEnum.second),
      SubscribeModel(
          subscribeTextGroupEnum: SubscribeTextGroupEnum.third,
          subscribePhotoGroupEnum: SubscribePhotoGroupEnum.third),
      SubscribeModel(
          subscribeTextGroupEnum: SubscribeTextGroupEnum.fourth,
          subscribePhotoGroupEnum: SubscribePhotoGroupEnum.fourth),
    ];
    setState(currentState.copyWith(
      listSubscribeModel: listSubscribeModel,
    ));
  }

  void showPrivacyPolicyAndTermOfUse() async {
    const url = 'https://www.moontalk.app/privacy';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch $url";
    }
  }

  void close(BuildContext context) {
    context.router.maybePop();
  }
}

class ScreenState {
  final bool loading;
  final List<SubscribeModel> listSubscribeModel;
  final List<StoreProduct> products;
  final StoreProduct? storeProduct;
  final bool showCircularProgress;

  ScreenState({
    this.loading = false,
    this.listSubscribeModel = const [],
    this.products = const [],
    this.storeProduct,
    this.showCircularProgress = false,
  });

  ScreenState copyWith({
    bool? loading,
    List<SubscribeModel>? listSubscribeModel,
    List<StoreProduct>? products,
    StoreProduct? storeProduct,
    bool? showCircularProgress,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      listSubscribeModel: listSubscribeModel ?? this.listSubscribeModel,
      products: products ?? this.products,
      storeProduct: storeProduct ?? this.storeProduct,
      showCircularProgress: showCircularProgress ?? this.showCircularProgress,
    );
  }
}
