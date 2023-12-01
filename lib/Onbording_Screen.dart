import 'package:flutter_class_work/Loginpage.dart';
import 'package:flutter_class_work/signup.dart';
import 'package:flutter_class_work/splash.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: OnboardingEx(),));
}
class OnboardingEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel
        (
        title:"page1" ,
        image: Align(alignment: Alignment.topCenter,
            child: Image.asset("assets/image/imageTiger.jpg")),
      ),

        PageViewModel
          (
          title:"page1" ,
          image: Align(alignment: Alignment.topCenter,
              child: Image.asset("assets/image/sunflower.jpg")),
        ),

        PageViewModel
          (
          title:"page1" ,
          image: Align(alignment: Alignment.topCenter,
              child: Image.asset("assets/image/flower.jpg")),
        ),

      ],
      onDone: ()=>Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage())),
    onSkip: ()=>(MaterialPageRoute(builder: (context) => Signup())),
      showSkipButton: true,
      skip: const Text("skip"),
      next: const Text("Next"),
      done: const Text("Continue"),
      dotsDecorator: const DotsDecorator(
        size: Size(20, 20),
        activeSize: Size(40, 20),
        color: Colors.black,
        activeColor: Colors.blueAccent,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),

    );
  }
}
