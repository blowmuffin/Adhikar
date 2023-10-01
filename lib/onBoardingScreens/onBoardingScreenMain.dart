
import 'package:adhikar2/home/homepage.dart';
import 'package:adhikar2/onBoardingScreens/page1.dart';
import 'package:adhikar2/onBoardingScreens/page2.dart';
import 'package:adhikar2/onBoardingScreens/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3()
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //skip button
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 9, 49, 83),
                      ),
                      child: const Center(
                          child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                //next or get started button
                onLastPage
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 9, 49, 83),
                            ),
                            child: const Center(child: Text('Get Strated', style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 9, 49, 83),
                            ),
                            child: const Center(
                              child: Text('Next', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
