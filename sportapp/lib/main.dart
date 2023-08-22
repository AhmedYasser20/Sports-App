import 'package:flutter/material.dart';


import 'screens/Category_Screen.dart';
import 'screens/Leagues_screen.dart';
import 'screens/countries_screen.dart';
import 'screens/onboardingScreens/test_page_view.dart';
import 'screens/player_info.dart';
import 'screens/players_team_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/teams_screen.dart';


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