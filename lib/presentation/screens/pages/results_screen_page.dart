import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/app/constants/app_colors/app_colors.dart';
import 'package:tapshyrma_8b/app/constants/app_text_style/app_text_styles.dart';
import 'package:tapshyrma_8b/presentation/screens/widgets/universal_widget.dart';

class ResultsBMIPage extends StatelessWidget {
  final String? bmi;
  final String? bmiJyiyntyk;
  final String? tesheruu;
  const ResultsBMIPage({
    super.key,
    required this.bmi,
    required this.bmiJyiyntyk,
    required this.tesheruu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        title: Text(
          "Ден соолук индекси (bmi)".toUpperCase(),
          style: AppTextStyles.numberAndIconColor15,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            child: const Text(
              'Жыйынтык',
              style: AppTextStyles.numberAndIconColor25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UniversalWidget(
              childs: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.08),
                      child: Text(
                        bmiJyiyntyk!.toUpperCase(),
                        style: AppTextStyles.textJyiyntykColor20,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.08),
                      child: Text(
                        bmi!,
                        style: AppTextStyles.numberAndIconColor60,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.08),
                      child: Text(
                        tesheruu!,
                        style: AppTextStyles.numberAndIconColor15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
