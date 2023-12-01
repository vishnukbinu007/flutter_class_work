import 'package:flutter/cupertino.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? image;
  final Widget? label;
  VoidCallback? onpressed;
  Mywidget({
    this.image,required this.label,required this.onpressed,required this.bgcolor
});

  @override
  Widget build(BuildContext context) {

    return Card(
          color: bgcolor,
          child: Column(
            children: [
              Container(
                child: image,
              ),

              ElevatedButton(onPressed: onpressed, child: label)

            ],
          )
        );
  }
}

