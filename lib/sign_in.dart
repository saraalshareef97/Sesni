import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sesni/Sign_up.dart';
import 'package:sesni/feelGood.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    textController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Let's Chat ${textController.text}");
  }

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
                                  controller: textController,
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
                                        Icons.person,
                                        color: Colors.red[50],
                                      ),
                                      hintText: 'Your Name',
                                      hintStyle:
                                          TextStyle(color: Colors.red[50])),
                                ),
                              ),
                              // Container(
                              //   margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              //   child: TextField(
                              //     style: TextStyle(color: Colors.red[50]),
                              //     cursorColor: Colors.red[50],
                              //     decoration: InputDecoration(
                              //         enabledBorder: OutlineInputBorder(
                              //             borderSide: BorderSide(
                              //                 color: Colors.red[50])),
                              //         focusedBorder: OutlineInputBorder(
                              //           borderSide: BorderSide(
                              //               color: Colors.red[50], width: 1.0),
                              //         ),
                              //         border: OutlineInputBorder(
                              //           borderRadius: BorderRadius.all(
                              //               Radius.circular(5)),
                              //         ),
                              //         filled: false,
                              //         fillColor: Colors.red[50],
                              //         prefixIcon: Icon(
                              //           Icons.lock,
                              //           color: Colors.red[50],
                              //         ),
                              //         hintText: 'Password',
                              //         // icon:
                              //         hintStyle:
                              //             TextStyle(color: Colors.red[50])),
                              //   ),
                              // ),
                            ])),
                  ],
                ),
                // Container(
                //     alignment: Alignment.center,
                //     margin: EdgeInsets.fromLTRB(0, 85, 15, 0),
                //     child: Text.rich(
                //       TextSpan(
                //         text: 'New to Sensi? ',
                //         style: TextStyle(
                //             color: Colors.red[50]), // default text style
                //         children: <TextSpan>[
                //           TextSpan(
                //               recognizer: new TapGestureRecognizer()
                //                 ..onTap = () {
                //                   Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => SignUp()),
                //                   );
                //                 },
                //               text: ' Sign up ',
                //               style: TextStyle(
                //                   color: Colors.red[50],
                //                   decoration: TextDecoration.underline,
                //                   fontWeight: FontWeight.w500)),
                //         ],
                //       ),
                //     )),
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
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.red[50],
                                // Retrieve the text the that user has entered by using the
                                // TextEditingController.
                                content: Container(
                                  height: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Welcome ',
                                            style: TextStyle(
                                                color: Colors.blueGrey[700],
                                                fontSize: 18),
                                          ),
                                          Text(textController.text,
                                              style: TextStyle(
                                                  color: Colors.blueGrey[700],
                                                  fontSize: 18)),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 25, 0, 0),
                                        alignment: Alignment.bottomCenter,
                                        child: FlatButton(
                                          child: Text(
                                              "Let's start our conversation"),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        Feeling()));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Feeling()));
                        },
                        child: Text(
                          "Submit",
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
          margin: EdgeInsets.fromLTRB(10, 150, 0, 0),
          alignment: Alignment.topCenter,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                  backgroundColor: Colors.red[50],
                  radius: 50,
                ),
                Container(
                  height: 90,
                  width: 270,
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
                        "Hello my friend :)  Kindly, tell me your name..",
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
