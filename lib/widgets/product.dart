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
      width: 150,
      margin: new EdgeInsets.symmetric(horizontal: 5),
      decoration: new BoxDecoration(
        color: new Color(widget.product.specialColor),
        borderRadius: BorderRadius.circular(10)
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Align(alignment: Alignment.center ,child: new Padding(padding: new EdgeInsets.only(left: 10,top: 5), child: Image.asset(widget.product.image,height: 100,width: 100,))),
              new Align(alignment: Alignment.centerLeft ,child: new Padding(padding: new EdgeInsets.only(left: 10,top: 5), child: new Text("%"+widget.product.discountPercent.toString(), style: TextStyle(fontFamily: fontFamily, fontSize: 14, color: new Color(baseColor3)),),)),
              new Container(
                width: size.width,
                margin: new EdgeInsets.only(left: 10, right:10, top:100),
                child: new Text(widget.product.title, textDirection: TextDirection.rtl, maxLines: 2, overflow: TextOverflow.ellipsis, style: new TextStyle(fontFamily: fontFamily, fontSize: 12, color: new Color(baseColor4)) ,),
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                width: 45,
                height: 45,
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
                width: size.width * 0.24,
                margin: new EdgeInsets.symmetric(horizontal: 2),
                child: new Column(
                  children: <Widget>[
                    new Text(widget.product.discount.toString()+" تومان", textDirection: TextDirection.rtl,style: TextStyle(color: widget.product.hasDiscount? new Color(baseColor5): new Color(0xFF000000),fontFamily: fontFamily,fontSize: 14,decoration: widget.product.hasDiscount?TextDecoration.lineThrough:null)),
                    new Visibility(child: new Text(widget.product.discount.toString()+" تومان", textDirection: TextDirection.rtl,style: TextStyle(fontFamily: fontFamily,fontSize: 14),))
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