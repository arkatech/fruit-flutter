import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget{
  final items;
  Carousel({this.items});
  @override
  State<StatefulWidget> createState() {
    return CarouselState();
  }

}

class CarouselState extends State<Carousel>{

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      aspectRatio: 16/7.5,
      viewportFraction: 1.0,
      items: [1,2,3,4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: new EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                  image: new DecorationImage(image: AssetImage("assets/images/slider.png"),fit: BoxFit.fill)
                ),
            );
          },
        );
      }).toList(),
    );
  }

}