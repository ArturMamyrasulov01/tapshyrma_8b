import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/app/constants/app_text_style/app_text_styles.dart';

class AgeandWeightWidget extends StatelessWidget {
  final String? ageStrig;
  final String? weightOrAge;
  // ignore: non_constant_identifier_names
  final Widget? row_button_widget;
  const AgeandWeightWidget({
    super.key,
    required this.weightOrAge,
    // ignore: non_constant_identifier_names
    required this.row_button_widget,
    required this.ageStrig,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ageStrig!.toUpperCase(),
          style: AppTextStyles.textColor25,
        ),
        Text(
          weightOrAge!,
          style: AppTextStyles.numberAndIconColor60,
        ),
        row_button_widget!,
      ],
    );
  }
}
