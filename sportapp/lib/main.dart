import 'package:flutter/material.dart';
import 'package:sportapp/screens/Category_Screen.dart';

import 'package:sportapp/screens/onboardingScreens/test_page_view.dart';
import 'package:sportapp/screens/splash_screen.dart';

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
      'categoryscreen':(context) => CategoryScreen(),
      },
    );
  }
}
