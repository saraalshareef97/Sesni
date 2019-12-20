import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:sesni/Colsing.dart';

class Chatt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(65.0),
              child: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
                title: Container(
                    alignment: Alignment.centerRight,
                    child: Row(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/logo.png'),
                        backgroundColor: Colors.red[50],
                        radius: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Sesni Robota",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ])),
                actions: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Closing()));
                    },
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            body: _sensiChat(context)));
  }
}

Widget _sensiChat(BuildContext context) {
  return WebviewScaffold(
    url:
        'https://assistant-chat-eu-gb.watsonplatform.net/web/public/96227687-878f-4a2a-875e-faa4f5b2eb92',
    hidden: false,
  );

// Widget _textfield() => Container(
//       margin: EdgeInsets.fromLTRB(0, 640, 0, 0),
//       decoration: BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 3.0)
//       ]),
//       child: ListTile(
//         trailing: RaisedButton(
//           child: Text('Send'),
//           onPressed: () {},
//         ),
//         title: TextField(
//           cursorColor: Colors.blueGrey[700],
//           decoration: InputDecoration(
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blueGrey[700])),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blueGrey[700], width: 0),
//               ),
//               filled: true,
//               fillColor: Colors.red[50],
//               prefixIcon: Icon(
//                 Icons.message,
//                 color: Colors.blueGrey[700],
//               ),
//               hintText: 'Type a message...',
//               hintStyle: TextStyle(color: Colors.blueGrey[700])),
//         ),
//       ),
//     );
}
