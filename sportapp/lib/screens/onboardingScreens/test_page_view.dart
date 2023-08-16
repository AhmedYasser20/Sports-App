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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.7,
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
              TextButton(onPressed: (){}, child: Text("Skip",style: TextStyle(color: Colors.white),))
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.1,
                  fit: BoxFit.none,
                  //maybe need locol image
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1552318965-6e6be7484ada?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
        ));
  }
}
