import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 26, 42, 167)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
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
  var no1text = TextEditingController();
  var no2text = TextEditingController();
  var result = "Result";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 102, 255),
          title: Center(child:Text(widget.title)),
        ),
        body: Container(
          color: Colors.blue.shade300,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1text,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2text,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1text.text.toString());
                              var no2 = int.parse(no2text.text.toString());
                              var sum = no1 + no2;
                              result = 'Addition of $no1 and $no2 is $sum';
                              setState(() {});
                            },
                            child: const Text('Add')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1text.text.toString());
                              var no2 = int.parse(no2text.text.toString());
                              var sub = no1 - no2;
                              result = 'Subtraction of $no1 and $no2 is $sub';
                              setState(() {});
                            },
                            child: const Text('Sub')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1text.text.toString());
                              var no2 = int.parse(no2text.text.toString());
                              var mul = no1 * no2;
                              result = 'Multiplication of $no1 and $no2 is $mul';
                              setState(() {});
                            },
                            child: const Text('Mult')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1text.text.toString());
                              var no2 = int.parse(no2text.text.toString());
                              var div = no1 / no2;
                              result = 'Division of $no1 and $no2 is ${div.toStringAsFixed(2)}';
                              setState(() {});
                            },
                            child: const Text('Div'))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result,
                    style: const TextStyle(
                        color: Color.fromARGB(236, 245, 6, 6), fontSize: 21),
                  ),
                ),
              ],
            ),
          )
          ),
        )
        );
  }
}
