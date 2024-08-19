import 'package:glow_up/api/load_data_point/dto.dart';
import 'package:glow_up/generated/l10n.dart';
import 'package:glow_up/screens/onboarding_page/bloc.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';
import 'package:flutter/material.dart';

class OnboardingFinishIndicator extends StatefulWidget {
  final double valueProgress;
  final bool isLastText;
  final List<LoadDataPoint> loadDataInfoStatus;
  final OnboardingBloc bloc;
  final S s;
  final BuildContext context;

  const OnboardingFinishIndicator({
    super.key,
    required this.valueProgress,
    required this.isLastText,
    required this.loadDataInfoStatus,
    required this.bloc,
    required this.s,
    required this.context,
  });

  @override
  State<OnboardingFinishIndicator> createState() =>
      _OnboardingFinishIndicatorState();
}

class _OnboardingFinishIndicatorState extends State<OnboardingFinishIndicator> {
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
    return Scaffold(
      backgroundColor: BC.navyGrey,
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                SizedBox(height: height / 30),
                Text(
                  widget.s.analyzingInfo,
                  style: BS.tex24.apply(color: BC.white),
                ),
                SizedBox(height: height / 12),
                SizedBox(
                  width: height < 840 ? height / 6.5 : height / 5.5,
                  height: height < 840 ? height / 6.5 : height / 5.5,
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
                            strokeWidth: height < 840 ? 9 : 12,
                            valueColor: AlwaysStoppedAnimation<Color>(BC.salad),
                            backgroundColor: BC.lightGray,
                          ),
                        ),
                      ),
                      Text(
                        '${(widget.valueProgress * 100).toInt()} %',
                        style: height < 840
                            ? BS.tex32Text.apply(color: BC.white)
                            : BS.indicatorText.apply(color: BC.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height < 840 ? height / 18 : height / 12),
                for (LoadDataPoint status in widget.loadDataInfoStatus)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.s30),
                    child: ShowDataPoint(loadDataInfoStatus: status),
                  ),
                if (widget.isLastText)
                  Text(
                    widget.s.scanCompleted,
                    style: BS.tex24.apply(color: BC.white),
                    textAlign: TextAlign.center,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShowDataPoint extends StatelessWidget {
  final LoadDataPoint loadDataInfoStatus;

  const ShowDataPoint({super.key, required this.loadDataInfoStatus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.s20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: Sizes.s10),
            child: Container(
              height: Sizes.s25,
              width: Sizes.s25,
              decoration: BoxDecoration(
                color: loadDataInfoStatus.isActive ? BC.salad : BC.darkSalad,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: BC.navyGrey,
                size: Sizes.s16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              loadDataInfoStatus.name,
              style: BS.tex14withFont400.apply(color: BC.white),
            ),
          ),
        ],
      ),
    );
  }
}
