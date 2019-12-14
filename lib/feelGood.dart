import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sesni/chat.dart';

class Feeling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: new BoxDecoration(
                image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.srcATop),
          image: ExactAssetImage('images/waa.jpg'),
        ))),
        Column(children: [
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(15, 75, 0, 0),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.red[50],
                  backgroundImage: AssetImage('images/logo.png'),
                ),
              ),
              Container(
                height: 70,
                width: 260,
                margin: EdgeInsets.fromLTRB(10, 75, 0, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.only(
                      bottomRight: new Radius.circular(12),
                      topLeft: new Radius.circular(12),
                      topRight: new Radius.circular(12)),
                ),
                child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "How do you feel today?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontSize: 20,
                      ),
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/saddd.png'),
                                radius: 60,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(45, 95, 25, 0),
                              child: SizedBox(
                                  width: 110,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => Chatt()),
                                      );
                                    },
                                    child: Text(
                                      "Sad",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.red[50], fontSize: 17),
                                    ),
                                    color: Colors.blueGrey[700],
                                  )),
                            )
                          ],
                        )),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/sad.png'),
                                radius: 60,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(45, 95, 25, 0),
                              child: SizedBox(
                                  width: 110,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) => Chatt()));
                                    },
                                    child: Text(
                                      "Borken",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.red[50],
                                          fontSize: 15.5),
                                    ),
                                    color: Colors.blueGrey[700],
                                  )),
                            )
                          ],
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/qssss.png'),
                                radius: 60,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(45, 95, 25, 0),
                              child: SizedBox(
                                  width: 110,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => Chatt()),
                                      );
                                    },
                                    child: Text(
                                      "Stressed",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.red[50], fontSize: 17),
                                    ),
                                    color: Colors.blueGrey[700],
                                  )),
                            )
                          ],
                        )),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/qvftf.png'),
                                radius: 60,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(45, 95, 25, 0),
                              child: SizedBox(
                                  width: 110,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) => Chatt()));
                                    },
                                    child: Text(
                                      "Emotional",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.red[50],
                                          fontSize: 15.5),
                                    ),
                                    color: Colors.blueGrey[700],
                                  )),
                            )
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 25, 0, 10),
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/haaa.png'),
                      radius: 60,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 100, 25, 0),
                    child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Chatt()));
                          },
                          child: Text(
                            "Want to laugh, just chatting",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.red[50], fontSize: 15.5),
                          ),
                          color: Colors.blueGrey[700],
                        )),
                  )
                ],
              )),
        ]),
      ],
    );
  }
}
