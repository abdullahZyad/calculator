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
  static bool isCalcable() {
    if(input.isEmpty) return false;
    if(input.length>30) return false;
    if(input[input.length-1]=="+" || input[input.length-1]=="-" ||
        input[input.length-1]=="*" || input[input.length-1]=="/" ||
        input[input.length-1]=="%" || input[input.length-1]=="." ) {
      return false;
    } else {
      return true;
    }
  }

  static void removeLast() {
    input = input.substring(0, input.length-1);
    screen = input;
  }
}