import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar()
    );
  }

  //Toolbar
  _appBar() => AppBar(title: Text("Page 3"));

}
