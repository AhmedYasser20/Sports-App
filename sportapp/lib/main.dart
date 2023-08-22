import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


import 'local_.dart';
import 'screens/Category_Screen.dart';
import 'screens/Leagues_screen.dart';
import 'screens/countries_screen.dart';
import 'screens/onboardingScreens/test_page_view.dart';
import 'screens/player_info.dart';
import 'screens/players_team_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/teams_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: L10n.all,
    path: 'assets/l10n',
    fallbackLocale: L10n.all[0],
    child: const Myapp(),
  ));
}
// void main() {
//   runApp(const Myapp());
// }

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:context.localizationDelegates ,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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