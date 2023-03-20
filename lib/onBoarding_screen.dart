import 'package:flutter/material.dart';
import 'package:introduction_screens/%C4%B0ntroScreens/intro_page_2.dart';
import 'package:introduction_screens/%C4%B0ntroScreens/intro_page_3.dart';
import 'package:introduction_screens/%C4%B0ntroScreens/intro_page_4.dart';
import 'package:introduction_screens/%C4%B0ntroScreens/intro_page_5.dart';
import 'package:introduction_screens/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'İntroScreens/intro_page_1.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();


  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index){
                setState(() {
                  onLastPage = (index == 4);
                });
              },
              children: const [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
                IntroPage4(),
                IntroPage5(),
              ],
            ),
            Container(alignment: const Alignment(0,0.95),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //   GestureDetector(
                    //   onTap: () {
                    // _controller.jumpToPage(4);
                    // },
                    // child: const Text('Skip', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Gloria Hallelujah'),),
                    // ),
                    if (onLastPage) Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const HomePage();
                          }
                          ),
                          );
                        },
                        child: const Text('UYGULAMAYA BAŞLA', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Gloria Hallelujah')),
                      ),
                    ),
                    SmoothPageIndicator(controller: _controller, count: 5),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
