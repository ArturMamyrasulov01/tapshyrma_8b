import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/app/constants/app_colors/app_colors.dart';
import 'package:tapshyrma_8b/app/constants/app_string/app_strings.dart';
import 'package:tapshyrma_8b/presentation/screens/widgets/age_and_weight_widget.dart';
import 'package:tapshyrma_8b/presentation/screens/widgets/button_widget.dart';
import 'package:tapshyrma_8b/presentation/screens/widgets/row_widget.dart';
import 'package:tapshyrma_8b/presentation/screens/widgets/slider_widget.dart';

import '../widgets/bottom_button_widget.dart';
import '../widgets/genders_winget.dart';
import '../widgets/universal_widget.dart';

class BMICalculate extends StatefulWidget {
  const BMICalculate({super.key});

  @override
  State<BMICalculate> createState() => _BMICalculateState();
}

class _BMICalculateState extends State<BMICalculate> {
  int weight = 60;
  functionWeight({required bool user}) {
    if (user == false) {
      weight--;
    } else {
      weight++;
    }
    setState(() {});
  }

  int age = 28;
  functionAge({required bool user}) {
    if (user == false) {
      age--;
    } else {
      age++;
    }
    setState(() {});
  }

  double height = 0.0;
  funtionHeight({required double value}) {
    height = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldColor,
          title: const Text(AppStrings.titleText),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UniversalWidget(
                    childs: GendersWidgets(
                      iconmale: Icons.male,
                      textMale: AppStrings.male,
                    ),
                  ),
                  UniversalWidget(
                    childs: GendersWidgets(
                      iconmale: Icons.female,
                      textMale: AppStrings.female,
                    ),
                  ),
                ],
              ),
              UniversalWidget(
                childs: SliderWidget(
                  sliderValue: height,
                  textHeight: AppStrings.height,
                  functionSlider: (value) => funtionHeight(value: value),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UniversalWidget(
                    childs: AgeandWeightWidget(
                      weightOrAge: weight.toString(),
                      ageStrig: AppStrings.weight,
                      row_button_widget: RowWidget(
                        addButton: ButtonWidget(
                          heroTag: 'weight+',
                          icons: Icons.add,
                          onClic: () => functionWeight(user: true),
                        ),
                        removeButton: ButtonWidget(
                          heroTag: 'weight-',
                          icons: Icons.remove,
                          onClic: () => functionWeight(user: false),
                        ),
                      ),
                    ),
                  ),
                  UniversalWidget(
                    childs: AgeandWeightWidget(
                      weightOrAge: age.toString(),
                      ageStrig: AppStrings.age,
                      row_button_widget: RowWidget(
                        addButton: ButtonWidget(
                          heroTag: 'age+',
                          onClic: () => functionAge(user: true),
                          icons: Icons.add,
                        ),
                        removeButton: ButtonWidget(
                          heroTag: 'age-',
                          onClic: () => functionAge(
                            user: false,
                          ),
                          icons: Icons.remove,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: NewWidget(
          height: height,
          weight: weight,
        ),
      ),
    );
  }
}
