import 'package:flutter/material.dart';
import 'package:sportapp/widgets/onboarding_widgets.dart';

class testOnBoardScreenMain extends StatefulWidget {
  const testOnBoardScreenMain({super.key});

  @override
  State<testOnBoardScreenMain> createState() => _testOnBoardScreenMainState();
}

class _testOnBoardScreenMainState extends State<testOnBoardScreenMain> {
  @override
   PageController _pageController = PageController();
  int _currentPage = 0;
  int _numPages = 3;

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
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 5, 17),
        body: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                   Navigator.pushNamed(context, "HomeScreen");
                }, child: Text("Skip",style: TextStyle(color: Colors.white),)),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.9,
              child: PageView(
                 controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                scrollDirection: Axis.horizontal,
                children: [OnboardOnne(), OnBoardTwo(), OnBoardThree()],
              ),
            ),
            
          ],
        ));
  }
}