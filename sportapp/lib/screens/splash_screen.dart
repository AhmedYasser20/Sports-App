import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 5)
   ,(){
    Navigator.pushReplacementNamed(context, "OnBoardOne");
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
                Text("Intixel training app",style: GoogleFonts.quicksand(color: Colors.white),)
],
            ),
            decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.3,
              fit: BoxFit.none,
              //maybe need locol image
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1552318965-6e6be7484ada?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
            ),
        )
    );
  }
}
