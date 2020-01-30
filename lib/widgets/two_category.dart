import 'package:flutter/material.dart';
import 'package:fruit/models/category.dart';
import 'package:fruit/styles/style.dart';

class TwoCategoryView extends StatefulWidget{
  final List<Category> categories;

  TwoCategoryView({this.categories});

  @override
  State<StatefulWidget> createState() {
    return TwoCategoryViewState();
  }

}

class TwoCategoryViewState extends State<TwoCategoryView>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.categories.length,
      itemBuilder: (context, index) => new Stack(
        children: <Widget>[
          new Container(
            width: size.width,
            height:  size.width/4,
            margin: new EdgeInsets.symmetric(horizontal: 5),
            decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage(widget.categories[index].image)),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          new Container(margin: new EdgeInsets.only(right:20,bottom: size.width/4.8), alignment: Alignment.centerRight, child: new Text(widget.categories[index].name, style: new TextStyle(color: Colors.white,fontSize: 18, fontFamily: fontFamily, fontWeight: FontWeight.bold),),)
        ],
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),);
  }
}