import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: Carousel(),));
}
class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      CarouselSlider(items: [
        Container(
          decoration: const BoxDecoration(
         image : DecorationImage(image:  AssetImage("assets/image/imageTiger.jpg"),
           fit: BoxFit.fill
         ),
          ),
        ),

        Container(
          decoration: const BoxDecoration(
              image : DecorationImage(image:  AssetImage("assets/image/gmarbles.jpg"),
                  fit: BoxFit.fill
              ),
          ),
        ),

        Container(
          decoration: const BoxDecoration(
            image : DecorationImage(image:  AssetImage("assets/image/imageTiger.jpg"),
                fit: BoxFit.fill
            ),
          ),
        ),

        Container(
          decoration: const BoxDecoration(
            image : DecorationImage(image:  AssetImage("assets/image/gmarbles.jpg"),
                fit: BoxFit.fill
            ),
          ),
        ),

        Container(
          decoration: const BoxDecoration(
            image : DecorationImage(image:  AssetImage("assets/image/imageTiger.jpg"),
                fit: BoxFit.fill
            ),
          ),
        ),
      ], options:CarouselOptions(

        aspectRatio: 16/9,
        viewportFraction:1 ,
        initialPage: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayCurve: Curves.linear,
        scrollDirection: Axis.vertical,
      ),
      ),
    );
  }
}
