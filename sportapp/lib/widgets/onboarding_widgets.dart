import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardOnne extends StatelessWidget {
  const OnboardOnne({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
                       width: MediaQuery.of(context).size.width ,
                       //height: MediaQuery.of(context).size.height*0.7,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                                color: const Color.fromARGB(255, 238, 103, 148),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/imgs/messi.png'))),
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height*0.25,
                          ),
                          Text("Welcome to The Sports App!",style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                         Text("All Your Favorite Sports in One Place",style: GoogleFonts.quicksand(color: Colors.white),)
                        ],
                      ),
                    );
  }
}
class OnBoardTwo extends StatelessWidget {
  const OnBoardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height*0.7,
      child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 238, 234, 235),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/imgs/vin.png'))),
                          // width: MediaQuery.of(context).size.width * 0.7,
                         width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height*0.25,
                        ),
                       Column(
                         children: [
                           Text("Stay Updated with Live Scores and More",style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                           Text("1:Real-time live scores for football, basketball, cricket, tennis, and more.",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("2:Comprehensive sports data and statistics for every match.",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("3:Get personalized notifications for your favorite teams and leagues.",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("4:Stay informed with the latest sports news and updates.",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("5:Interactive widgets to customize your home screen with live scores and fixtures.",style: GoogleFonts.quicksand(color: Colors.white),),
                         ],
                       )
                      ],
                    ),
    );
  }
}

class OnBoardThree extends StatelessWidget {
  const OnBoardThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height*0.7,
      child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 114, 115, 207),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/imgs/unknownplayer.png'))),
                          // width: MediaQuery.of(context).size.width * 0.7,
                         width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height*0.25,
                        ),
                       Column(
                         children: [
                           Text("Enhance Your Sports-Watching Experience",style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                           Text("1: Never miss a moment with live match commentary and highlights",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("2: Engage with fellow sports fans through social sharing and discussion.",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("3: Get expert analysis and insights from renowned sports commentators.",style: GoogleFonts.quicksand(color: Colors.white),),
                           Text("4: Customize your app experience with favorite team selections and personalized settings.",style: GoogleFonts.quicksand(color: Colors.white),),
                         ],
                       )
                      ],
                    ),
    );
  }
}