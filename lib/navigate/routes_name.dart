import 'package:get/get.dart';
import 'package:unit_testing/navigate/routes_path.dart';
import 'package:unit_testing/view/color_screen.dart';
import 'package:unit_testing/view/unit_test_page.dart';

class NavigateName{
  static appRoutes()=>[
    GetPage(
        name: NavigatePath.unit_test_page,
        page:()=> const UnitTestPage(),
    ),
    GetPage(
      name: NavigatePath.color_test_page,
      page:()=>  ColorScreen(),
    )
  ];
}