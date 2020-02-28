import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(children: <Widget>[
          Container(
            color: Color (0xffA09595),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("V1+3=5", textAlign: TextAlign.center, style: TextStyle( color: Color(0xffFFF5EE), fontSize: 72),)
              ],
            ),
          ),
          Container (
            color: Color(0xff988D8D),
            child:  Center (
            child: Text("---", textAlign: TextAlign.center, style: TextStyle (color: Color(0xffF4EBE5), fontSize: 32), ),
    )
          ),
          buildButtons()

]
      ),
    ));
  }
  
  buildButtons(){
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 8.0,
      children: <Widget>[
        Container (
          child: Text("1"),
          color: Color(0xffA9A9A9),
          padding: const EdgeInsets.all(40),
        ),
         Container(
          child: Text("2"),
           color: Color(0xffA9A9A9),
           padding: const EdgeInsets.all(40),
         ),
        Container (
           child: Text ("3"),
           color: Color(0xffA9A9A9),
           padding: const EdgeInsets.all(40),
        ),
        Container(
          child: Text("4"),
          color: Color(0xffA9A9A9),
          padding: const EdgeInsets.all(40),
        ),

    ]
    );
  }
}
