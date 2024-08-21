import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:glow_up/api/deep/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/routers/routes.dart';
import 'package:glow_up/utils/notifi_service.dart';
import 'package:glow_up/utils/session.dart';
import 'package:glow_up/utils/bloc_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DeepScanningBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  DeepScanningBloc() {
    setState(ScreenState());
  }

  final storage = GetStorage();
  final session = Session();
  final String offeringsDeepGroup = "DeepScan";

  final List<String> ids = [
    "looksmax_consumable_7.99",
    "sub2",
    "sub3",
  ];
  String subscriptionDeepScanId =
      Platform.isAndroid ? "deepscan_iap_7_99" : "looksmax_consumable_7.99";

  Future<void> initialize() async {
    try {
      createListDeepModel();
      if (Platform.isIOS) {
        List<StoreProduct> products = await Purchases.getProducts(ids);
        setState(currentState.copyWith(products: products));
      } else {
        Offerings offerings = await Purchases.getOfferings();
        Offering? currentOffering = offerings.current;
        final Package? deepScanPackage =
            currentOffering?.getPackage(offeringsDeepGroup);
        if (deepScanPackage != null) {
          StoreProduct deepScanProduct = deepScanPackage.storeProduct;

          List<StoreProduct> products = [];
          products.add(deepScanProduct);
          setState(currentState.copyWith(products: products));
        }
      }
    } catch (e) {
      log("Error initializa get syb $e");
    }
  }

  Future<void> buyProductDeepScan(BuildContext context) async {
    try {
      saveSubscribeDeep(true, context, true);
      await storage.write(session.isUserSubscribeDeepScan, false);
      // setState(currentState.copyWith(showCircularProgress: true));
      // CustomerInfo customerInfo =
      //     await Purchases.purchaseStoreProduct(currentState.storeProduct!);
      // setState(currentState.copyWith(showCircularProgress: false));
      // checkCustomerInfoDeep(customerInfo, context, false, isLog: true);
    } catch (e) {
      setState(currentState.copyWith(showCircularProgress: false));
      log("Error buy deep sub $e");
    }
  }

  bool checkCustomerInfoDeep(
    CustomerInfo customerInfo,
    BuildContext context,
    bool isRestore, {
    bool isLog = false,
  }) {
    bool hasConsumablePurchase = customerInfo.nonSubscriptionTransactions.any(
        (transaction) =>
            transaction.productIdentifier == subscriptionDeepScanId);
    saveSubscribeDeep(hasConsumablePurchase, context, isRestore);

    return hasConsumablePurchase;
  }

  Future<void> saveSubscribeDeep(
      bool hasSubscribe, BuildContext context, bool isRestore) async {
    await storage.write(session.isUserDeepSubscribed, hasSubscribe);
    if (hasSubscribe) {
      isRestore
          ? await storage.write(session.isUserSubscribeDeepScan, false)
          : await storage.write(session.isUserSubscribeDeepScan, true);
      await NotificationService()
          .scheduleDeepNotifications(false, S.of(context));
      setState(currentState.copyWith(showIndicator: true));
      await storage.write(session.isUserDeepSubscribed, true);
    }
  }

  restorePurchaseDeep(BuildContext context) async {
    setState(currentState.copyWith(showCircularProgress: true));
    CustomerInfo customerInfo =
        await Purchases.restorePurchases().onError((error, stackTrace) {
      return Purchases.getCustomerInfo();
    });
    setState(currentState.copyWith(showCircularProgress: false));
    checkCustomerInfoDeep(customerInfo, context, true);
  }

  void getProductDeep() {
    for (var product in currentState.products) {
      if (product.identifier == subscriptionDeepScanId) {
        setState(currentState.copyWith(storeProduct: product));
      }
    }
  }

  void createListDeepModel() {
    List<DeepModel> listDeepModel = [
      DeepModel(
          deepTextGroupEnum: DeepTextGroupEnum.first,
          deepTitleGroupEnum: DeepTitleGroupEnum.first,
          deepPhotoGroupEnum: DeepPhotoGroupEnum.first),
      DeepModel(
          deepTextGroupEnum: DeepTextGroupEnum.second,
          deepTitleGroupEnum: DeepTitleGroupEnum.second,
          deepPhotoGroupEnum: DeepPhotoGroupEnum.second),
      DeepModel(
          deepTextGroupEnum: DeepTextGroupEnum.third,
          deepTitleGroupEnum: DeepTitleGroupEnum.third,
          deepPhotoGroupEnum: DeepPhotoGroupEnum.third),
      DeepModel(
          deepTextGroupEnum: DeepTextGroupEnum.fourth,
          deepTitleGroupEnum: DeepTitleGroupEnum.fourth,
          deepPhotoGroupEnum: DeepPhotoGroupEnum.fourth),
    ];
    setState(currentState.copyWith(
      listDeepModel: listDeepModel,
    ));
  }

  void back(BuildContext context) {
    context.router.maybePop<bool>(false);
  }

  void initialLoadData(BuildContext context, S s) async {
    await Future.delayed(const Duration(milliseconds: 100));
    onStartAnimation(context, s);
  }

  void onStartAnimation(BuildContext context, S s) {
    currentState.timer =
        Timer.periodic(const Duration(milliseconds: 100), (Timer timer) async {
      var valueProgress = currentState.valueProgress;

      if (valueProgress < 1) {
        setState(currentState.copyWith(valueProgress: valueProgress += 0.02));
      } else {
        context.router.push(const DeepScanningResultRoute());
        await Future.delayed(const Duration(milliseconds: 100));
        currentState.timer?.cancel();
        setState(currentState.copyWith(
            showIndicator: false,
            valueProgress: 1,
            isLastText: true,
            timer: currentState.timer));
      }
    });
  }

  void disposeIndicator() {
    currentState.timer?.cancel();
    setState(currentState.copyWith(timer: currentState.timer));
  }

  void showPrivacyPolicyAndTermOfUse() async {
    const url = 'https://www.moontalk.app/privacy';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch $url";
    }
  }
}

class ScreenState {
  final bool loading;
  final List<StoreProduct> products;
  final StoreProduct? storeProduct;
  final double valueProgress;
  final bool isLastText;
  Timer? timer;
  final bool showIndicator;
  final List<DeepModel> listDeepModel;
  final bool showCircularProgress;

  ScreenState({
    this.loading = false,
    this.products = const [],
    this.storeProduct,
    this.valueProgress = 0,
    this.isLastText = false,
    this.timer,
    this.showIndicator = false,
    this.listDeepModel = const [],
    this.showCircularProgress = false,
  });

  ScreenState copyWith({
    bool? loading,
    List<StoreProduct>? products,
    StoreProduct? storeProduct,
    double? valueProgress,
    bool? isLastText,
    Timer? timer,
    bool? showIndicator,
    List<DeepModel>? listDeepModel,
    bool? showCircularProgress,
  }) {
    return ScreenState(
      loading: loading ?? this.loading,
      products: products ?? this.products,
      storeProduct: storeProduct ?? this.storeProduct,
      valueProgress: valueProgress ?? this.valueProgress,
      isLastText: isLastText ?? this.isLastText,
      timer: timer ?? this.timer,
      showIndicator: showIndicator ?? this.showIndicator,
      listDeepModel: listDeepModel ?? this.listDeepModel,
      showCircularProgress: showCircularProgress ?? this.showCircularProgress,
    );
  }
}
