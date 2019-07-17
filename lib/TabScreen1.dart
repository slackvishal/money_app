import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TabScreen1(),
    );
  }
}

class TabScreen1 extends StatefulWidget {
  TabScreen1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TabScreen1State createState() => _TabScreen1State();
}

class _TabScreen1State extends State<TabScreen1>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(milliseconds: 700), vsync: this);

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  final Color firstColor = Color(0xFF7479EC);
  final Color secondColor = Color(0xFFA079DE);
  final Color thirdColor = Color(0xFF58C6F2);
  final Color fourthColor = Color(0xFFF28C4A);
  final Color fifthColor = Color(0xFF5BE84C);
  final Color sixthColor = Color(0xFFF6F15C);
  final Color seventhColor = Color(0xFFE1453B);

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = MediaQuery.of(context).size.width;
    double defaultScreenHeight = MediaQuery.of(context).size.height;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: ScreenUtil.instance.setHeight(200.0),
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(
                            colors: [firstColor, secondColor],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 40.0,
                            left: 20.0,
                            right: 20.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.apps,
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenUtil.instance.setHeight(30.0),
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.account_circle,
                                        color: Colors.white,
                                        size: 70.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: ScreenUtil.instance.setWidth(10.0),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Vishal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontFamily: "Rix",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "@vishal123",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Rix",
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "My Balance",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            ScreenUtil.instance.setSp(16.0),
                                        fontFamily: "Rix",
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Rp. 1.000000",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              ScreenUtil.instance.setSp(16.0),
                                          fontFamily: "Rix"),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            "assets/send.png",
                                            height: ScreenUtil.instance
                                                .setHeight(40.0),
                                            width: ScreenUtil.instance
                                                .setWidth(40.0),
                                          ),
                                        ),
                                        Text(
                                          "Send",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Rix",
                                            fontSize:
                                                ScreenUtil.instance.setSp(14.0),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            "assets/paying.png",
                                            height: ScreenUtil.instance
                                                .setHeight(40.0),
                                            width: ScreenUtil.instance
                                                .setWidth(40.0),
                                          ),
                                        ),
                                        Text(
                                          "Pay",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Rix",
                                            fontSize:
                                                ScreenUtil.instance.setSp(14.0),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            "assets/topup.png",
                                            height: ScreenUtil.instance
                                                .setHeight(40.0),
                                            width: ScreenUtil.instance
                                                .setWidth(40.0),
                                          ),
                                        ),
                                        Text(
                                          "Top Up",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Rix",
                                            fontSize:
                                                ScreenUtil.instance.setSp(14.0),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            "assets/request.png",
                                            height: ScreenUtil.instance
                                                .setHeight(40.0),
                                            width: ScreenUtil.instance
                                                .setWidth(40.0),
                                          ),
                                        ),
                                        Text(
                                          "Request",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Rix",
                                            fontSize:
                                                ScreenUtil.instance.setSp(14.0),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, left: 30.0, right: 30.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Transform(
                                      transform: Matrix4.translationValues(
                                          animation.value * defaultScreenWidth,
                                          0.0,
                                          0.0),
                                      child: Row(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              color: Colors.deepPurpleAccent
                                                  .withOpacity(0.2),
                                              height: ScreenUtil.instance
                                                  .setHeight(35.0),
                                              width: ScreenUtil.instance
                                                  .setWidth(35.0),
                                              child: Icon(
                                                Icons.account_balance_wallet,
                                                color: Colors.deepPurpleAccent,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil.instance
                                                .setWidth(10.0),
                                          ),
                                          Text(
                                            "E-Shopping",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: ScreenUtil.instance
                                                    .setSp(14.0),
                                                fontFamily: "Rix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Transform(
                                      transform: Matrix4.translationValues(
                                          animation.value * defaultScreenWidth,
                                          0.0,
                                          0.0),
                                      child: Row(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              color:
                                                  Colors.blue.withOpacity(0.2),
                                              height: ScreenUtil.instance
                                                  .setHeight(35.0),
                                              width: ScreenUtil.instance
                                                  .setWidth(35.0),
                                              child: Icon(
                                                Icons.assessment,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil.instance
                                                .setWidth(10.0),
                                          ),
                                          Text(
                                            "Bill Payment",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: ScreenUtil.instance
                                                    .setSp(14.0),
                                                fontFamily: "Rix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Transform(
                                      transform: Matrix4.translationValues(
                                          animation.value * defaultScreenWidth,
                                          0.0,
                                          0.0),
                                      child: Row(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              color: Colors.pinkAccent
                                                  .withOpacity(0.2),
                                              height: ScreenUtil.instance
                                                  .setHeight(35.0),
                                              width: ScreenUtil.instance
                                                  .setWidth(35.0),
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.pinkAccent,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil.instance
                                                .setWidth(10.0),
                                          ),
                                          Text(
                                            "Charity",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: ScreenUtil.instance
                                                    .setSp(14.0),
                                                fontFamily: "Rix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Transform(
                                      transform: Matrix4.translationValues(
                                          animation.value * defaultScreenWidth,
                                          0.0,
                                          0.0),
                                      child: Row(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              color: Colors.orangeAccent
                                                  .withOpacity(0.2),
                                              height: ScreenUtil.instance
                                                  .setHeight(35.0),
                                              width: ScreenUtil.instance
                                                  .setWidth(35.0),
                                              child: Icon(
                                                Icons.stars,
                                                color: Colors.orangeAccent,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil.instance
                                                .setWidth(10.0),
                                          ),
                                          Text(
                                            "Send Gift",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: ScreenUtil.instance
                                                    .setSp(14.0),
                                                fontFamily: "Rix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Transform(
                                      transform: Matrix4.translationValues(
                                          animation.value * defaultScreenWidth,
                                          0.0,
                                          0.0),
                                      child: Row(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              color: Colors.blue.withOpacity(0.2),
                                              height: ScreenUtil.instance
                                                  .setHeight(35.0),
                                              width: ScreenUtil.instance
                                                  .setWidth(35.0),
                                              child: Icon(
                                                Icons.assignment,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil.instance
                                                .setWidth(10.0),
                                          ),
                                          Text(
                                            "Split Bills",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: ScreenUtil.instance
                                                    .setSp(14.0),
                                                fontFamily: "Rix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Transform(
                                      transform: Matrix4.translationValues(
                                          animation.value * defaultScreenWidth,
                                          0.0,
                                          0.0),
                                      child: Row(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              color:
                                                  Colors.green.withOpacity(0.2),
                                              height: ScreenUtil.instance
                                                  .setHeight(35.0),
                                              width: ScreenUtil.instance
                                                  .setWidth(35.0),
                                              child: Icon(
                                                Icons.attach_money,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil.instance
                                                .setWidth(10.0),
                                          ),
                                          Text(
                                            "Cash back",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: ScreenUtil.instance
                                                    .setSp(14.0),
                                                fontFamily: "Rix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(10.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 30.0, left: 30.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Promo",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenUtil.instance.setSp(16.0),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Rix"),
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(10.0),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 30.0, left: 30.0, bottom: 10.0),
                        child: Container(
                          height: ScreenUtil.instance.setHeight(100.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height:
                                          ScreenUtil.instance.setHeight(100.0),
                                      width:
                                          ScreenUtil.instance.setWidth(300.0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        gradient: LinearGradient(
                                          colors: [secondColor, thirdColor],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25.0,
                                            left: 15.0,
                                            right: 10.0,
                                            bottom: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  "assets/topup.png",
                                                  height: ScreenUtil.instance
                                                      .setHeight(50.0),
                                                  width: ScreenUtil.instance
                                                      .setWidth(50.0),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: ScreenUtil.instance
                                                  .setWidth(10.0),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Saving Account",
                                                  style: TextStyle(
                                                      fontSize: ScreenUtil
                                                          .instance
                                                          .setSp(20.0),
                                                      color: Colors.white,
                                                      fontFamily: "Rix"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(top:5.0),
                                                  child: Text(
                                                    "Get up to 10% monthly interest!",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Rix",
                                                      fontSize: ScreenUtil
                                                          .instance
                                                          .setSp(14.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil.instance.setWidth(10.0),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height:
                                          ScreenUtil.instance.setHeight(100.0),
                                      width:
                                          ScreenUtil.instance.setWidth(300.0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        gradient: LinearGradient(
                                          colors: [fifthColor, fourthColor],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25.0,
                                            left: 15.0,
                                            right: 10.0,
                                            bottom: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  "assets/request.png",
                                                  height: ScreenUtil.instance
                                                      .setHeight(50.0),
                                                  width: ScreenUtil.instance
                                                      .setWidth(50.0),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: ScreenUtil.instance
                                                  .setWidth(10.0),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Saving Account",
                                                  style: TextStyle(
                                                      fontSize: ScreenUtil
                                                          .instance
                                                          .setSp(20.0),
                                                      color: Colors.white,
                                                      fontFamily: "Rix"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(top:5.0),
                                                  child: Text(
                                                    "Get up to 10% monthly interest!",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Rix",
                                                      fontSize: ScreenUtil
                                                          .instance
                                                          .setSp(14.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil.instance.setWidth(10.0),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height:
                                          ScreenUtil.instance.setHeight(100.0),
                                      width:
                                          ScreenUtil.instance.setWidth(300.0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        gradient: LinearGradient(
                                          colors: [sixthColor, seventhColor],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25.0,
                                            left: 15.0,
                                            right: 10.0,
                                            bottom: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  "assets/send.png",
                                                  height: ScreenUtil.instance
                                                      .setHeight(50.0),
                                                  width: ScreenUtil.instance
                                                      .setWidth(50.0),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: ScreenUtil.instance
                                                  .setWidth(10.0),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Saving Account",
                                                  style: TextStyle(
                                                      fontSize: ScreenUtil
                                                          .instance
                                                          .setSp(20.0),
                                                      color: Colors.white,
                                                      fontFamily: "Rix"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(top:5.0),
                                                  child: Text(
                                                    "Get up to 10% monthly interest!",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Rix",
                                                      fontSize: ScreenUtil
                                                          .instance
                                                          .setSp(14.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
