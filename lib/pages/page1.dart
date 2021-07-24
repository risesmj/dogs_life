import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _body()
    );
  }

  //Toolbar
  _appBar() => AppBar(title: Text("Page 1"));

  _body() =>
      ListView(
        children: [
          Image.asset("assets/images/dog1.png"),
          Image.asset("assets/images/dog2.png"),
          Image.asset("assets/images/dog3.png")
        ],
      );

}
