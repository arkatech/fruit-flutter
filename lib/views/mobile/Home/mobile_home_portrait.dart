import 'package:flutter/material.dart';
import 'package:fruit/models/category.dart';
import 'package:fruit/models/product.dart';
import 'package:fruit/styles/style.dart';
import 'package:fruit/widgets/carousel.dart';
import 'package:fruit/widgets/category.dart';
import 'package:fruit/widgets/product.dart';
import 'package:fruit/widgets/two_category.dart';

class MobileHomePortrait extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MobileHomePortraitState();
  }

}

class MobileHomePortraitState extends State<MobileHomePortrait>{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return new SafeArea(child: Scaffold(
      backgroundColor: new Color(backgroundColor),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  width: size.width-90,
                  height: 40,
                  margin: new EdgeInsets.all(16),
                  decoration: new BoxDecoration(
                      color: new Color(baseColor),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.symmetric(horizontal: 10),
                        child: new InkWell(
                          child: new Icon(Icons.menu),
                          onTap: () {},
                        ),),
                      new Container(
                        alignment: Alignment.center,
                        width: size.width * 0.65,
                        margin: new EdgeInsets.symmetric(horizontal: 5),
                        child: new TextField(
                          maxLines: 1,
                          textDirection: TextDirection.rtl,
                          style: new TextStyle(fontSize: 20),
                          decoration: new InputDecoration(
                              hintStyle: TextStyle(fontSize: 20,fontFamily: fontFamily),
                              hintText: "جتسجو ...",
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              contentPadding: new EdgeInsets.only(bottom: 7.5)
                          ),
                        ),)
                    ],
                  ),
                ),
                new Container(
                  width: 40,
                  child: new Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      new Container(
                        width: size.shortestSide * 0.1,
                        height: size.shortestSide * 0.1,
                        child: new InkWell(
                          onTap: () {

                          },
                          child: new Container(
                            width: 25,
                            height: 25,
                            margin: new EdgeInsets.all(5),
                            decoration: new BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/cart.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                        ),
                      ),
                      new Positioned(
                          left: size.shortestSide * 0.055,
                          top: 0,
                          child: new Container(
                            width: 16,
                            height: 16,
                            decoration: new BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 11, vertical: 5),
              child:
              new Carousel(),),
            new Container(
              height: 35,
              alignment: Alignment.center,
              margin: new EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: new Border.all(color: new Color(baseColor),width: 1.5)
              ),
              child: new Text(
              "ساعت کاری مجموعه: 8 صبح الی 18 بعد از ظهر",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: new TextStyle(fontSize: 14, fontFamily: fontFamily, color: new Color(baseColor2)),

            ),),
            new Container(
                width: size.width,
                height: size.width/1.5,
                margin: new EdgeInsets.symmetric(horizontal: 11, vertical: 0),child:
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              itemBuilder: (context, index) => new CategoryView(category: categories[index]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.75
              ),),),
            new Padding(padding: new EdgeInsets.symmetric(horizontal: 16, vertical: 16), child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(right: 5), child: new Text("فروش ویژه",style: TextStyle(fontSize: 16, fontFamily: fontFamily,color: new Color(baseColor3)),),),
                new Padding(padding: new EdgeInsets.only(left: 5), child: new InkWell(
                  child: new Text("مشاهده همه",style: TextStyle(fontSize: 12, fontFamily: fontFamily,color: new Color(baseColor2)),),
                  onTap: (){},
                ))

              ],
            ),),
            new Container(
              height: size.shortestSide/1.75,
              margin: new EdgeInsets.symmetric(horizontal:16, vertical: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                  itemBuilder: (context,index){
                return new ProductView(product: products[index],);
              }),),
            new Container(
              width: size.width,
              height: size.width/4,
              margin: new EdgeInsets.symmetric(horizontal: 16, vertical: 5), child:
              new TwoCategoryView(categories: twoCategories,),),
            new Padding(padding: new EdgeInsets.symmetric(horizontal: 16, vertical: 16), child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(right: 5), child: new Text("محصولات تخفیف دار",style: TextStyle(fontSize: 16, fontFamily: fontFamily,color: new Color(baseColor3)),),),
                new Padding(padding: new EdgeInsets.only(left: 5), child: new InkWell(
                  child: new Text("مشاهده همه",style: TextStyle(fontSize: 12, fontFamily: fontFamily,color: new Color(baseColor2)),),
                  onTap: (){},
                ))

              ],
            ),),
            new Container(
              height: size.shortestSide/1.75,
              margin: new EdgeInsets.symmetric(horizontal:16, vertical: 5),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context,index){
                    return new ProductView(product: offProducts[index],);
                  }),),
            new Padding(padding: new EdgeInsets.symmetric(horizontal: 16, vertical: 16), child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(right: 5), child: new Text("عرقیجات",style: TextStyle(fontSize: 16, fontFamily: fontFamily,color: new Color(baseColor3)),),),
                new Padding(padding: new EdgeInsets.only(left: 5), child: new InkWell(
                  child: new Text("مشاهده همه",style: TextStyle(fontSize: 12, fontFamily: fontFamily,color: new Color(baseColor2)),),
                  onTap: (){},
                ))

              ],
            ),),
            new Container(
              height: size.shortestSide/1.75,
              margin: new EdgeInsets.symmetric(horizontal:16, vertical: 5),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context,index){
                    return new ProductView(product: waterProducts[index],);
                  }),),
          ],
        ),
      ),
    ));
  }

}
