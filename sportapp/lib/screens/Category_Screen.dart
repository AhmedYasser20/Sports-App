import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/category_widget.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Container(
          color: Colors.black,
          height: 900,
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/stadium.jpeg"),
                    opacity: 0.5,
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.only(left: 20, top: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Choose",
                                      style: GoogleFonts.barriecito(
                                        color: Colors.amber,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Your Sport",
                                      style:GoogleFonts.barriecito(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    SportWidget(
                      image: "assets/images/football.png",
                      name: "Football",
                      onTap: () {
                      
                      },
                    ),
                    SportWidget(
                      image: "assets/images/bascketball.png",
                      name: "Basketball",
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Coming soon"),
                              content: Text("Tennis is coming soon.",style: GoogleFonts.barriecito()),
                              actions: [
                                TextButton(
                                  child: Text("OK",style: GoogleFonts.barriecito(color: Colors.amber)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SportWidget(
                      image: "assets/images/cricket.png",
                      name: "Cricket",
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Coming soon"),
                              content: Text("Tennis is coming soon.",style: GoogleFonts.barriecito()),
                              actions: [
                                TextButton(
                                  child: Text("OK",style: GoogleFonts.barriecito(color: Colors.amber)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SportWidget(
                      image: "assets/images/tennis.png",
                      name: "Tennis",
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Coming soon"),
                              content: Text("Tennis is coming soon.",style: GoogleFonts.barriecito()),
                              actions: [
                                TextButton(
                                  child: Text("OK",style: GoogleFonts.barriecito(color: Colors.amber)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
