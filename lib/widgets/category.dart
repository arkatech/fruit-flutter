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
    var size = MediaQuery.of(context).size;
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
            width:size.width*0.20,
            height:size.width*0.20,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: new Border.all(color: new Color(baseColor),width: 1.5),
            ),
            child: Image.asset(widget.category.image, scale: size.width>size.height?1.25:1.5,)
        ),
        new Container(child: new Text(widget.category.name, style: TextStyle(fontFamily: fontFamily),),)
      ],
    );
  }
}