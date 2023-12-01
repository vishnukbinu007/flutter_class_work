import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Extended(),));
}

class Extended extends StatelessWidget {
  const Extended({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: StaggeredGrid.extent(maxCrossAxisExtent: 150,
children: [
  StaggeredGridTile.extent(crossAxisCellCount: 3, mainAxisExtent: 150,
      child:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1697736830029-782599b7a64a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          fit: BoxFit.fill
          ),

        ),
      ) ),

  StaggeredGridTile.extent(crossAxisCellCount: 4, mainAxisExtent: 150,
      child:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1699134115052-bd7899efddcc?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              fit: BoxFit.fill
          ),

        ),
      ) ),

  StaggeredGridTile.extent(crossAxisCellCount: 5, mainAxisExtent: 150,
      child:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://unsplash.com/photos/a-dog-wearing-a-hat-X0M9syZpvo0"),
              fit: BoxFit.fill
          ),

        ),
      ) ),

],

),
    );
  }
}
