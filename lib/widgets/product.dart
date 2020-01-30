import 'package:flutter/material.dart';
import 'package:fruit/models/product.dart';
import 'package:fruit/styles/style.dart';

class ProductView extends StatefulWidget{
  final Product product;
  ProductView({this.product});
  @override
  State<StatefulWidget> createState() {
    return ProductViewState();
  }

}

class ProductViewState extends State<ProductView>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Container(
      width: size.shortestSide/2.5+1,
      margin: new EdgeInsets.symmetric(horizontal: 5),
      decoration: new BoxDecoration(
        color: new Color(widget.product.hasSpecial?widget.product.specialColor:0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: widget.product.hasSpecial?Colors.transparent:Color(baseColor))
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Align(alignment: Alignment.center ,child: new Padding(padding: new EdgeInsets.only(left: 10,top: 5), child:
              Image.asset(widget.product.image,height: 115,width: 115,))),
              widget.product.hasDiscount?new Align(alignment: Alignment.centerLeft ,child: new Padding(padding: new EdgeInsets.only(left: 10,top: 5), child: new Text("%"+widget.product.discountPercent.toString(), style: TextStyle(fontFamily: fontFamily, fontSize: 14, color: widget.product.hasSpecial?new Color(baseColor3):Colors.red),),)):new Container(),
              new Container(
                width: size.shortestSide,
                margin: new EdgeInsets.only(left: 10, right:10, top:size.shortestSide/3.25),
                child: new Text(widget.product.title, textDirection: TextDirection.rtl, maxLines: 2,softWrap: true, overflow: TextOverflow.ellipsis, style: new TextStyle(fontFamily: fontFamily, color: new Color(baseColor4)))
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                width: size.shortestSide/7.65,
                height:58,
                decoration: new BoxDecoration(
                    color: new Color(0x30263238),
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))
                ),
                child: new InkWell(
                  onTap: (){},
                  child: new Icon(
                    Icons.add, size: 35, color: new Color(0x50000000),),
                ),
              ),
              new Container(
                width: size.shortestSide/3.75,
                height: 58,
                padding: new EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: new EdgeInsets.symmetric(horizontal: 0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(widget.product.price.toString()+" تومان", textDirection: TextDirection.rtl,style: TextStyle(color: widget.product.hasDiscount? new Color(baseColor5): new Color(0xFF000000),fontFamily: fontFamily,decoration: widget.product.hasDiscount?TextDecoration.lineThrough:null)),
                    new Visibility(visible: widget.product.hasDiscount,child: new Text(widget.product.discount.toString()+" تومان", textDirection: TextDirection.rtl,style: TextStyle(fontFamily: fontFamily),)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}