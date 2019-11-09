import 'package:flutter/material.dart';
import 'package:sesni/feelGood.dart';

class SignUp extends StatelessWidget {
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
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                                        Icons.person,
                                        color: Colors.red[50],
                                      ),
                                      hintText: 'Your Name',
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
                                      prefixIcon: Icon(
                                        Icons.date_range,
                                        color: Colors.red[50],
                                      ),
                                      hintText: 'Your birthday Date',
                                      // icon:
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
                                        Icons.lock,
                                        color: Colors.red[50],
                                      ),
                                      hintText: 'Confirm Password',
                                      // icon:
                                      hintStyle:
                                          TextStyle(color: Colors.red[50])),
                                ),
                              ),
                            ])),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  alignment: Alignment.bottomCenter,
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
                          "Sign in",
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
          margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
          // alignment: Alignment.center,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                  backgroundColor: Colors.red[50],
                  radius: 40,
                ),
                Container(
                  height: 60,
                  width: 300,
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
                        "Hello my Friends, let's meet!",
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
