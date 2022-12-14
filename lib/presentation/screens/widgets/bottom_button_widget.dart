import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/service/models/model_bloc.dart';

import '../../../app/constants/app_colors/app_colors.dart';
import '../../../app/constants/app_string/app_strings.dart';
import '../../../app/constants/app_text_style/app_text_styles.dart';
import '../pages/results_screen_page.dart';

class NewWidget extends StatelessWidget {
   final double? height;
  final int? weight;
  const NewWidget({
    Key? key,
    required this.height,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
        ModelBloc bmiCalculate = ModelBloc(
          height: height,
          weight: weight,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return ResultsBMIPage(
              bmiJyiyntyk: bmiCalculate.bmiFunction(),
              bmi: bmiCalculate.calculateBMI(),
              tesheruu: bmiCalculate.tesheruu(),
            );
          }),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        color: AppColors.bottomNavBarColor,
        child: Center(
          child: Text(
            AppStrings.calculate.toUpperCase(),
            style: AppTextStyles.numberAndIconColor25,
          ),
        ),
      ),
    );
  }
}
