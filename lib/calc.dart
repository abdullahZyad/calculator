import 'package:function_tree/function_tree.dart';

class Calc {
  
  static String screen = "0";
  static String input = "";
  static num output = 0.00;

  static void calcIt() {
    output = input.interpret() as double;
    screen = "$output";
    input = "";
  }
  static void removeLast() {
    input = input.substring(0, input.length-1);
    screen = input;
  }
}