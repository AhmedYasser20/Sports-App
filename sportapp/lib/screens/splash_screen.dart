import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../gloabal_varibles.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 5)
   ,(){
    Navigator.pushReplacementNamed(context, "OnBoardScreen");
   }
   );


    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 5, 17),
        body: SizedBox.expand(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sport App",style:  GoogleFonts.bebasNeue(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                Text("Intixel training app",style: GoogleFonts.quicksand(color: Colors.white),),
                SizedBox(height: 50,),
                // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                
              ],
            ),
            decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.5,
              fit: BoxFit.none,
              //maybe need locol image
                image: AssetImage("assets/images/wallpaper.jpg"))),
            ),
        )
    );
  }
}