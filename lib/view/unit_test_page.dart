import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_testing/navigate/routes_path.dart';
import 'package:unit_testing/utils/color_util.dart';

class UnitTestPage extends StatefulWidget {
   const UnitTestPage({super.key});


  @override
  State<UnitTestPage> createState() => _UnitTestPageState();
}

class _UnitTestPageState extends State<UnitTestPage> {
  //late TextEditingController textEditingController;
  String inputText = '';
  String rev = '';

  /*@override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }*/
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Test'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextField(
                key: ValueKey('tf1'),
                //controller: textEditingController,
                onChanged: (value){
                  setState((){
                    inputText=value;
                    rev=inputText.split('').reversed.join();
                    reverseString(inputText);
                  });
                },
                decoration: InputDecoration(
                  label: Text('Enter Text'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.blue,
                    width: 8,)
                  )
                ),
              ),
              SizedBox(height: 30,),
              Text(rev),
              IconButton(

                  onPressed: (){
                    Get.toNamed(NavigatePath.color_test_page);
                  },
                  icon: Icon(Icons.navigate_next,
                  color: ColorUtil.getUniqueColor(),
                  size: 30,),
                  color: ColorUtil.getUniqueColor(),
              )
            ],
          )
      ),
    );
  }

}
String reverseString(String initialvale){
  return initialvale.split('').reversed.join();
}
