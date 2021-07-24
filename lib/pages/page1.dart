import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _body());
  }

  //Toolbar
  _appBar() => AppBar(title: Text("Page 1"));

  _body() {

    final List<Image> imgs = [
      _img("assets/images/dog1.png"),
      _img("assets/images/dog2.png"),
      _img("assets/images/dog3.png")
    ];
    
    return ListView.builder(
        itemCount: imgs.length,
        itemExtent: 300,
        itemBuilder: (BuildContext context, int index) {
      return imgs[index];
    });
  }

  _img(path) =>
    Image.asset(
      path,
      fit: BoxFit.cover,
    );

}
