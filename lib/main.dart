import 'package:flutter/material.dart';

import 'calc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff3a4042),
          foregroundColor: const Color(0xff8ecccc),
          elevation: 0,
          shape: const CircleBorder(),
        )),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff212121),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: (MediaQuery.of(context).size.height / 3 as int) as double?,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(Calc.screen,
                            style: const TextStyle(
                                fontSize: 45, color: Color(0xffffffff))))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input = "";
                                  Calc.screen = Calc.input;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff50717b)),
                              child:
                              const Text("C", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input = "";
                                  Calc.screen = Calc.input;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff50717b)),
                              child: const Text("+/-",
                                  style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (Calc.isCalcable()) {
                                    Calc.input += "%";
                                    Calc.screen = Calc.input;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff50717b)),
                              child:
                              const Text("%", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (Calc.isCalcable()) {
                                    Calc.input += "/";
                                    Calc.screen = Calc.input;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffe49756)),
                              child:
                              const Text("/", style: TextStyle(fontSize: 30)))
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "7";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("7", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "8";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("8", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "9";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("9", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (Calc.isCalcable()) {
                                    Calc.screen = "${Calc.input}x";
                                    Calc.input += "*";
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffe49756)),
                              child:
                              const Text("x", style: TextStyle(fontSize: 30))),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "4";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("4", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "5";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("5", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "6";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("6", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (Calc.isCalcable()) {
                                    Calc.input += "-";
                                    Calc.screen = Calc.input;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffe49756)),
                              child:
                              const Text("-", style: TextStyle(fontSize: 30))),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "1";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("1", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "2";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("2", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "3";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("3", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (Calc.isCalcable()) {
                                    Calc.input += "+";
                                    Calc.screen = Calc.input;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffe49756)),
                              child:
                              const Text("+", style: TextStyle(fontSize: 30))),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.input += "0";
                                  Calc.screen = Calc.input;
                                });
                              },
                              child:
                              const Text("0", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (Calc.isCalcable()) {
                                    Calc.input += ".";
                                    Calc.screen = Calc.input;
                                  }
                                });
                              },
                              child:
                              const Text(".", style: TextStyle(fontSize: 30))),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Calc.calcIt();
                                  Calc.screen = "${Calc.output}";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffe49756)),
                              child:
                              const Text("=", style: TextStyle(fontSize: 30))),
                        ],
                      )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
