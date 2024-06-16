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
          fixedSize: const Size(100, 100),
          maximumSize: const Size(500, 500),
          minimumSize: const Size(10, 10),
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
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(Calc.screen.replaceAll("*", "x"),
                        style: const TextStyle(
                            fontSize: 80, color: Color(0xffffffff)))),
              ),
              Flexible(
                flex: 2,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex:1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input = "";
                                    Calc.screen = "0";
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff50717b)),
                                child:
                                const Text("C", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff50717b)),
                                child: const Text(":)",
                                    style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
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
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
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
                                const Text("/", style: TextStyle(fontSize: 30))),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex:1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "7":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("7", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "8":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("8", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "9":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("9", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (Calc.isCalcable()) {
                                      Calc.input += "*";
                                      Calc.screen = Calc.input;
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffe49756)),
                                child:
                                const Text("x", style: TextStyle(fontSize: 30))),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "4":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("4", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "5":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("5", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "6":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("6", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
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
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "1":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("1", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "2":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("2", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10?
                                    Calc.input += "3":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("3", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
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
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Calc.input.length<10&&(Calc.input.length==1&&Calc.input[0]=="0")?
                                    Calc.input += "0":null;
                                    Calc.screen = Calc.input;
                                  });
                                },
                                child:
                                const Text("0", style: TextStyle(fontSize: 30))),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
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
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
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
                          ),
                        ],
                      ),
                    )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
