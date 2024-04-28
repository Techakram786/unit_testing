import 'package:flutter/material.dart';
import 'package:unit_testing/utils/color_util.dart';
class ColorStfWidget extends StatefulWidget {
  ColorStfWidget({super.key});

  @override
  State<ColorStfWidget> createState() => _ColorStfWidgetState();
}

class _ColorStfWidgetState extends State<ColorStfWidget> {
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
