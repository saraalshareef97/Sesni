import 'package:flutter/material.dart';
import 'package:sesni/main.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: [
      Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
        fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.5), BlendMode.srcATop),
        image: ExactAssetImage('images/wb2.jpg'),
      ))),
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 250),
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Container(
                child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/logo.png',
              ),
              radius: 50,
              backgroundColor: Colors.red[50],
            )),
            Container(
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                width: 250,
                height: 80,
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
                      "I had a great time chatting with you! hope you enjoyed too! See you soon.",
                      style:
                          TextStyle(fontSize: 14, color: Colors.blueGrey[700])),
                )),
          ],
        ),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 50),
        child: SizedBox(
            width: 170,
            height: 50,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5),
                  side: BorderSide(color: Colors.blueGrey[700], width: 0)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcome()));
              },
              child: Text(
                "Back to Sensi",
                style: TextStyle(color: Colors.blueGrey[700], fontSize: 17),
              ),
              color: Colors.red[50],
            )),
      )
    ]));
  }
}
