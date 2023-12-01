import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Staggered(),));
}

class Staggered extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 3,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image/aayy.jpg"),
                fit: BoxFit.fill),

              ),
            )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/image/aayy.jpg"),
                      fit: BoxFit.fill),

                ),
              )),
          StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/image/aayy.jpg"),
                      fit: BoxFit.fill),

                ),
              )),
          ],),
      ),

      );

  }
}
