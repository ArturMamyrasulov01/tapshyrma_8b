import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/app/constants/app_colors/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String? heroTag;
  final IconData? icons;
  final void Function()? onClic;

  const ButtonWidget({
    super.key,
    required this.heroTag,
    required this.icons,
    required this.onClic,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag!,
      backgroundColor: AppColors.buttonColor,
      onPressed: onClic,
      child: Icon(
        icons,
      ),
    );
  }
}
