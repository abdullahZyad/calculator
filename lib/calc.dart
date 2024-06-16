import 'package:function_tree/function_tree.dart';

class Calc {
  static String screen = "";
  static String input = "";
  static num output = 0.00;
  static void calcIt() {
    if(isCalcable()) {
      output = input.interpret() as double;
      screen = "$output";
      input = "";
    }
  }
  static bool isCalcable() {
    if(input.isEmpty) return false;
    if(input.length>10) return false;
    if(input[input.length-1]=="+" || input[input.length-1]=="-" ||
        input[input.length-1]=="*" || input[input.length-1]=="/" ||
        input[input.length-1]=="%" || input[input.length-1]==".") {
      return false;
    } else {
      return true;
    }
  }
}