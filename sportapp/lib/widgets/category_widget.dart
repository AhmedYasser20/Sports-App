import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportWidget extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback onTap;

  const SportWidget({
    required this.image,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.amber,width: 3)
        ),
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image,width: 100,),
              SizedBox(height: 10),
              Text(
                name,
                style:GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        
      ),
    );
  }
}