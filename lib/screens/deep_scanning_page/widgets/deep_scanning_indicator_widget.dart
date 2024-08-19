import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/deep_scanning_page/bloc.dart';
import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';

class DeepScanningIndicatorWidget extends StatefulWidget {
  final double valueProgress;
  final bool isLastText;
  final DeepScanningBloc bloc;
  final S s;
  final BuildContext context;

  const DeepScanningIndicatorWidget({
    super.key,
    required this.valueProgress,
    required this.isLastText,
    required this.bloc,
    required this.s,
    required this.context,
  });

  @override
  State<DeepScanningIndicatorWidget> createState() =>
      _DeepScanningIndicatorWidgetState();
}

class _DeepScanningIndicatorWidgetState
    extends State<DeepScanningIndicatorWidget> {
  @override
  void initState() {
    super.initState();
    widget.bloc.initialLoadData(widget.context, widget.s);
  }

  @override
  void dispose() {
    widget.bloc.disposeIndicator();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BC.navyGrey,
      body: Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(height: height / 5),
              SizedBox(
                width: height < 840 ? height / 7.5 : height / 6.5,
                height: height < 840 ? height / 7.5 : height / 6.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: SizedBox(
                        width: height / 5,
                        height: height / 5,
                        child: CircularProgressIndicator(
                          value: widget.valueProgress,
                          strokeWidth: height < 840 ? 6 : 9,
                          valueColor: AlwaysStoppedAnimation<Color>(BC.salad),
                          backgroundColor: BC.lightGray,
                        ),
                      ),
                    ),
                    Text(
                      "${(widget.valueProgress * 100).toInt()}",
                      style: height < 840
                          ? BS.tex48Text.apply(color: BC.white)
                          : BS.indicatorText.apply(color: BC.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 4),
                child: Text(
                  widget.s.pleaseWaitForYourResults,
                  style: BS.tex16.apply(color: BC.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
