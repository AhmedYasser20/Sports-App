import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/animtion/anime.dart';
import 'package:sportapp/l10n/locale_keys.g.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../widgets/category_widget.dart';
import 'countries_screen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  PageController _pageController = PageController();

  int _currentPage = 0;

  int _numPages = 4;

  void _startAutoSlide() {
    Future.delayed(Duration(seconds: 3), () {
      if (_currentPage < _numPages - 1) {
        _pageController.nextPage(
            duration: Duration(seconds: 1), curve: Curves.ease);
      } else {
        _pageController.jumpToPage(0);
      }
      _startAutoSlide();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startAutoSlide();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 25),
            height: MediaQuery.of(context).size.height * 0.35,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets/images/stadium.jpeg"),
                          opacity: 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            LocaleKeys.choose.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.amber,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            LocaleKeys.yourSport.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w400,
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *  0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets/images/tennis stad.jpg"),
                          opacity: 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            LocaleKeys.choose.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.amber,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            LocaleKeys.yourCountry.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w400,
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
                  ],
                ),
                      // Additional content for the second container
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *  0.35,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/bascketball stad.jpg"),
                          opacity: 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                     child: Center(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            LocaleKeys.choose.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.amber,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            LocaleKeys.teams.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w400,
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
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets/images/cricket std.jpg"),
                          opacity: 0.5,
                          fit: BoxFit.cover,
                         ),
                      ),
                        child: Center(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            LocaleKeys.choose.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.amber,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            LocaleKeys.yourCountry.tr(),
                                            style: GoogleFonts.bebasNeue(
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w100,
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
                  ],
                ),
        ])),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                SportWidget(
                  image: "assets/images/football.png",
                  name: LocaleKeys.footballTitle.tr(),
                  onTap: () {
                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                             FootballAnimation()),
                                      // Form is valid, do something
                                    );
                  },
                ),
                SportWidget(
                  image: "assets/images/bascketball.png",
                  name: LocaleKeys.basketballTitle.tr(),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Coming soon"),
                          content: Text("Tennis is coming soon.",
                              style: GoogleFonts.bebasNeue()),
                          actions: [
                            TextButton(
                              child: Text("OK",
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.amber)),
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
                  name: LocaleKeys.cricket.tr(),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Coming soon"),
                          content: Text("cricket is coming soon.",
                              style: GoogleFonts.bebasNeue()),
                          actions: [
                            TextButton(
                              child: Text("OK",
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.amber)),
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
                  name: LocaleKeys.tennisTitle.tr(),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Coming soon"),
                          content: Text("Tennis is coming soon.",
                              style: GoogleFonts.bebasNeue()),
                          actions: [
                            TextButton(
                              child: Text("OK",
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.amber)),
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
        ]));
  }
}
