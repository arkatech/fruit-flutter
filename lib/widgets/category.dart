import 'package:flutter/material.dart';
import 'package:fruit/styles/style.dart';

class CategoryView extends StatefulWidget{
  final category;

  CategoryView({this.category});

  @override
  State<StatefulWidget> createState() {
    return CategoryViewState();
  }

}

class CategoryViewState extends State<CategoryView>{
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
            width:85,
            height: 85,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: new Border.all(color: new Color(baseColor),width: 1.5),
            ),
            child: Image.asset(widget.category.image, scale: 1.5,)
        ),
        new Text(widget.category.name, style: TextStyle(fontFamily: fontFamily, fontSize: 14),)
      ],
    );
  }
}