import 'package:flutter/material.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _body(context)
    );
  }

  //Toolbar
  _appBar() => AppBar(title: Text("Dogs Life"));

  //Conteúdo
  _body(BuildContext context) =>
    Container(margin: EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          children: [
            Text(
              "Hello Dogs",
              style: TextStyle(color: Colors.blue, fontSize: 34)),
            Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
              height: 300,
              child: PageView(
                children: <Widget> [
                  Image.asset("assets/images/dog1.png"),
                  Image.asset("assets/images/dog2.png"),
                  Image.asset("assets/images/dog3.png"),
                ],
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _button(() => _onClick(context,Page1()),"Page 1"),
                _button(() => _onClick(context,Page2()),"Page 2"),
                _button(() => _onClick(context,Page3()),"Page 3")
              ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _button(() => {},"Snack"),
                  _button(() => {},"Dialog"),
                  _button(() => {},"Toast")
                ]
            )
          ],
        )
    );

  //Gera os botões
  _button(onPressed, title) =>
      ElevatedButton(onPressed: onPressed, child: Text(title));

  _onClick(context, page) =>
    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));

}
