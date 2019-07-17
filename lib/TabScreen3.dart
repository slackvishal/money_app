import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TabScreen3(),
    );
  }
}

class TabScreen3 extends StatefulWidget {
  TabScreen3({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TabScreen3State createState() => _TabScreen3State();
}

class _TabScreen3State extends State<TabScreen3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
