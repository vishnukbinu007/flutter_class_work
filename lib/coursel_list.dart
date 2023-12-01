import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home:CarouselList() ,));
}

class CarouselList extends StatelessWidget {



  var images = [
    "assets/image/imageTiger.jpg",
    "assets/image/gmarbles.jpg",
    "assets/image/imageTiger.jpg",
    "assets/image/gmarbles.jpg",
    "assets/image/imageTiger.jpg",
    "assets/image/gmarbles.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
       CarouselSlider(items:
       List.generate(6,
               (index) =>
       Container(
         decoration: BoxDecoration(

           image: DecorationImage(image: AssetImage(images[index]),
           ),
         ),
       )),
    options:CarouselOptions(

    aspectRatio: 1/1,
    viewportFraction:1 ,
    initialPage: 1,
    enableInfiniteScroll: true,
    autoPlay: true,
    autoPlayCurve: Curves.linear,
    scrollDirection: Axis.vertical,
    )
       )
    );
  }
}
