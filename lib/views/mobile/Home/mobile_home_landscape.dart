import 'package:flutter/material.dart';

class MobileHomePortrait extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MobileHomePortraitState();
  }

}

class MobileHomePortraitState extends State<MobileHomePortrait>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  width: 0.8*size.width,
                  height: 40,
                  decoration: new BoxDecoration(
                    color: new Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(5)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
