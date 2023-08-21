import 'package:flutter/material.dart';
import 'package:sportapp/screens/Category_Screen.dart';
import 'package:sportapp/screens/HomeScreen/home_screen.dart';
import 'package:sportapp/screens/Leagues_screen.dart';
import 'package:sportapp/screens/leagueScreen/teams_home.dart';
import 'package:sportapp/screens/onboardingScreens/test_page_view.dart';
import 'package:sportapp/screens/player_info.dart';
import 'package:sportapp/screens/players_team_screen.dart';
import 'package:sportapp/screens/splash_screen.dart';

import 'screens/HomeScreen/countries_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" :(context) => SplashScreen(),
        "OnBoardScreen":(context) => testOnBoardScreenMain(),
        "HomeScreen" :(context) => CategoryScreen(),
        "Countries":(context) => test(),
        "Leagues": (context) =>Leagues_screen(),
        "Teams":(context) => TeamsScreens(),
        "PlayersOfTeam":(context) =>PlayersOfTeam(),
        "playerInfo":(context)=>PlayerInfoScreen()
      },
    );
  }
}