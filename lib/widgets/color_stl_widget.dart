import 'package:flutter/material.dart';
import 'package:unit_testing/utils/color_util.dart';
class ColorStlWidget extends StatelessWidget {
   ColorStlWidget({super.key});
   final Color color=ColorUtil.getUniqueColor();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       width: 200,
        height: 200,
        color: color,
      ),
    );
  }
}
