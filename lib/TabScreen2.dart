import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TabScreen2(),
    );
  }
}

class TabScreen2 extends StatefulWidget {
  TabScreen2({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TabScreen2State createState() => _TabScreen2State();
}

class _TabScreen2State extends State<TabScreen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
