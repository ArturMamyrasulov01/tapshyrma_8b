import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/app/constants/app_colors/app_colors.dart';
import 'package:tapshyrma_8b/app/constants/app_text_style/app_text_styles.dart';

// ignore: must_be_immutable
class GendersWidgets extends StatelessWidget {
  IconData? iconmale;
  String? textMale;
  GendersWidgets({
    super.key,
    required this.iconmale,
    required this.textMale,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconmale,
          size: MediaQuery.of(context).size.height * 0.15,
          color: AppColors.numberAndIconColor,
        ),
        Text(
          textMale!.toUpperCase(),
          style: AppTextStyles.textColor25,
        )
      ],
    );
  }
}
