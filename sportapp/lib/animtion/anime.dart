import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FootballAnimation extends StatefulWidget {
  const FootballAnimation({super.key});

  @override
  State<FootballAnimation> createState() => _FootballAnimationState();
}

class _FootballAnimationState extends State<FootballAnimation> {
  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 5)
   ,(){
    Navigator.pushReplacementNamed(context, "Countries");
   }
   );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 213, 17),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/imgs/animation_llm2mcl1.json',
            repeat: true
          )
        ],
      ),
    );
  }
}