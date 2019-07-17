import 'package:flutter/material.dart';
import 'package:wallet/TabScreen1.dart';
import 'package:wallet/TabScreen2.dart';
import 'package:wallet/TabScreen3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter wallet app'),
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
  int currentTabIndex = 0;
  List<Widget> tabs = [
    TabScreen1(),
    TabScreen2(),
    TabScreen3(),
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurpleAccent,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text("My wallet", style: TextStyle(fontFamily: "Rix"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Insights", style: TextStyle(fontFamily: "Rix"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            title: Text("Tool", style: TextStyle(fontFamily: "Rix"),),
          ),
        ],
      ),
    );
  }
}
