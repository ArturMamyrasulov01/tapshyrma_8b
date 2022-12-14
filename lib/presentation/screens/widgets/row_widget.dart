import 'package:flutter/material.dart';
import 'package:tapshyrma_8b/presentation/screens/widgets/button_widget.dart';

// ignore: must_be_immutable
class RowWidget extends StatelessWidget {
  ButtonWidget? removeButton;
  ButtonWidget? addButton;

  RowWidget({
    super.key,
    required this.removeButton,
    required this.addButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        removeButton!,
        SizedBox(
          width: MediaQuery.of(context).size.height * 0.02,
        ),
        addButton!,
      ],
    );
  }
}
