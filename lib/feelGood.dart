import 'package:flutter/material.dart';
import 'package:sesni/chat.dart';
import 'package:sesni/feelBad.dart';

class Feeling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        Container(
            width: double.infinity,
            height: 370,
            color: Colors.white,
            //  alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 110),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.red[50],
                      backgroundImage: AssetImage('images/logo.png'),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 260,
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                          "How you feel today?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontSize: 22,
                          ),
                        )),
                  ),
                ],
              ),
            )),
        Container(
          margin: EdgeInsets.fromLTRB(0, 170, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: SizedBox(
                    width: 150,
                    height: 60,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Good",
                        style: TextStyle(
                            color: Colors.blueGrey[700], fontSize: 20),
                      ),
                      color: Colors.red[50],
                    )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
                child: SizedBox(
                    width: 150,
                    height: 60,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeelingBad()));
                      },
                      child: Text(
                        "Bad",
                        style: TextStyle(
                            color: Colors.blueGrey[700], fontSize: 20),
                      ),
                      color: Colors.red[50],
                    )),
              )
            ],
          ),
        ),
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(20, 150, 0, 0),
            child: Row(
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/haaa.png'),
                    radius: 60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: SizedBox(
                      width: 250,
                      height: 100,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebViewInFlutter()),
                          );
                        },
                        child: Text(
                          "Want to laugh, just chatting",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red[50],
                            fontSize: 21,
                          ),
                        ),
                        color: Colors.blueGrey[700],
                      )),
                )
              ],
            ))
      ],
    );
  }
}
