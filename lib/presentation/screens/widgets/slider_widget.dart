import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/app/constants/app_text_style/app_text_styles.dart';

// ignore: must_be_immutable
class SliderWidget extends StatelessWidget {
  final double? sliderValue;
  final String? textHeight;

  final Function(double) functionSlider;
  const SliderWidget({
    super.key,
    required this.sliderValue,
    required this.textHeight,
    required this.functionSlider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textHeight!.toUpperCase(),
          style: AppTextStyles.textColor25,
        ),
        Text(
          sliderValue!.toStringAsFixed(0),
          style: AppTextStyles.numberAndIconColor60,
        ),
        Slider(
          max: 200,
          value: sliderValue!,
          onChanged: functionSlider,
        ),
      ],
    );
  }
}
