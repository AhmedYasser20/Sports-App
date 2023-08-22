import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/gloabal_varibles.dart';

import '../l10n/locale_keys.g.dart';

class OnboardOnne extends StatelessWidget {
  const OnboardOnne({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: const Color.fromARGB(255, 238, 103, 148),),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(          
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/messi.png'))),
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height*0.60*0.9,
          ),
          Container(
             width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height*0.40*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
              color: Colors.black
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(LocaleKeys.footballTitle.tr(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text(LocaleKeys.footballSubTitle.tr(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w100),),
                    ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class OnBoardTwo extends StatelessWidget {
  const OnBoardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromARGB(255, 253, 189, 93),),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(          
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/basketPlayer2.png'))),
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height*0.60*0.9,
          ),
          Container(
             width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height*0.40*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
              color: Colors.black
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(LocaleKeys.basketballTitle.tr(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text(LocaleKeys.basketballsubtile.tr(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w100),),
                    ],
              ),
            ),
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
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromARGB(255, 60, 176, 239),),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(          
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/tennisPlayer2.png'))),
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height*0.60*0.9,
          ),
          Container(
             width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height*0.40*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
              color: Colors.black
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(LocaleKeys.tennisTitle.tr(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text(LocaleKeys.tennisSubtitle.tr(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w100),),
                    ],
              ),
            ),
          )
        ],
      ),
    );
  }
}