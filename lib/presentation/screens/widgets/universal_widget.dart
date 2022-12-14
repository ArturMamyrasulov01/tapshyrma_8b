import 'package:flutter/material.dart';

import '../../../app/constants/app_decoration/app_decoration.dart';

class UniversalWidget extends StatelessWidget {
  final Widget? childs;
  const UniversalWidget({
    required this.childs,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.containerColor15,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.06,
          vertical: MediaQuery.of(context).size.height * 0.03,
        ),
        child: childs,
      ),
    );
  }
}
