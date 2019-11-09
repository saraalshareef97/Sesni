import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sesni/Sign_up.dart';
import 'package:sesni/feelGood.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Stack(
              children: [
                Container(height: double.infinity, child: Body()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 100),
                        width: double.infinity,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: TextField(
                                  style: TextStyle(color: Colors.red[50]),
                                  cursorColor: Colors.red[50],
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red[50])),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red[50], width: 1.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      filled: false,
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.red[50],
                                      ),
                                      hintText: 'Your Email',
                                      hintStyle:
                                          TextStyle(color: Colors.red[50])),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: TextField(
                                  style: TextStyle(color: Colors.red[50]),
                                  cursorColor: Colors.red[50],
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red[50])),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red[50], width: 1.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      filled: false,
                                      fillColor: Colors.red[50],
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.red[50],
                                      ),
                                      hintText: 'Password',
                                      // icon:
                                      hintStyle:
                                          TextStyle(color: Colors.red[50])),
                                ),
                              ),
                            ])),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 85, 15, 0),
                    child: Text.rich(
                      TextSpan(
                        text: 'New to Sensi? ',
                        style: TextStyle(
                            color: Colors.red[50]), // default text style
                        children: <TextSpan>[
                          TextSpan(
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                },
                              text: ' Sign up ',
                              style: TextStyle(
                                  color: Colors.red[50],
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 350, 0, 0),
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 180,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                                color: Colors.blueGrey[700], width: 0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Feeling()));
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.blueGrey[700], fontSize: 20),
                        ),
                        color: Colors.red[50],
                      )),
                )
              ],
            )));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
        fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.5), BlendMode.srcATop),
        image: ExactAssetImage('images/wb2.jpg'),
      ))),
      Container(
          margin: EdgeInsets.fromLTRB(10, 80, 0, 0),
          alignment: Alignment.topCenter,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                  backgroundColor: Colors.red[50],
                  radius: 45,
                ),
                Container(
                  height: 85,
                  width: 285,
                  margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
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
                        "Welcome Back, login to continue.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 19,
                        ),
                      )),
                )
              ]))
    ]);
  }
}