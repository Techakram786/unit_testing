import 'package:flutter/material.dart';
import '../widgets/color_stf_widget.dart';
class ColorScreen extends StatefulWidget {
   ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  final List<Widget> colorWidgets=[ColorStfWidget(key: UniqueKey(),),
    ColorStfWidget(key: UniqueKey(),)];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Row(
            children: colorWidgets,
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.swap_horiz),
            onPressed: (){
             //todo swap container
              colorWidgets.insert(1, colorWidgets.removeAt(0));
              setState((){});
            },
          ),
        )
    );
  }
}
