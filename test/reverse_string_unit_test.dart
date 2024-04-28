import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/view/unit_test_page.dart';

void main(){
  test('String should be reversed', () {
  String initial='AKRAM';
  String reversed=reverseString(initial);
  expect(reversed, 'MARKA');
  });
}