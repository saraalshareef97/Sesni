import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sesni/feelGood.dart';
import 'package:sesni/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sensi Robota',
        home: Scaffold(

            // backgroundColor: Colors.pink[100],
            body: Welcome()));
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: [
        Container(
            decoration: new BoxDecoration(
                image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.srcATop),
          image: ExactAssetImage('images/wb2.jpg'),
        ))),
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: ExactAssetImage('images/f.jpg'), fit: BoxFit.cover)),
        // ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
              alignment: Alignment.center,
              child: Text('SENSI Chatbot',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red[50],
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 100, 0, 0),
              child: Row(
                children: <Widget>[
                  Container(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/logo.png',
                        ),
                        radius: 60,
                        backgroundColor: Colors.red[50],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.only(
                            bottomRight: new Radius.circular(12),
                            topLeft: new Radius.circular(12),
                            topRight: new Radius.circular(12)),
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 0, 10),
                        child: Text(
                            "Welcome! Feel free to tell me anything, I'm your friend that will always be here for you, click the button below to start.",
                            style: TextStyle(
                                fontSize: 14, color: Colors.blueGrey[700])),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: SizedBox(
                  width: 200,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5),
                        side:
                            BorderSide(color: Colors.blueGrey[700], width: 0)),
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => LogIn()));
                    },
                    child: Text(
                      "Let's Begin",
                      style:
                          TextStyle(color: Colors.blueGrey[700], fontSize: 17),
                    ),
                    color: Colors.red[50],
                  )),
            )
          ],
        )
      ],
    ));
  }
}
