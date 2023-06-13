import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {

  ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(top: 20.0),
      //       child: Container(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             Text('Home',style: mainStyle(
      //                 color: Colors.white,
      //                 fontSize: 24
      //             ),),
      //             const SizedBox(width: 20,),
      //             Text('Contact',style: mainStyle(
      //                 color: Colors.white,
      //                 fontSize: 24
      //             ),),
      //             const SizedBox(width: 20,),
      //             Text('Projects',style: mainStyle(
      //                 color: Colors.white,
      //                 fontSize: 24
      //             ),),
      //             const SizedBox(width: 20,),
      //             Text('Resume',style: mainStyle(
      //                 color: Colors.white,
      //                 fontSize: 24
      //             ),),
      //             const SizedBox(width: 20,),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          ScrollTransformView(
            children: [
              ScrollTransformItem(
                builder: (context){
                  final offScreenPercentage = min(context / screenSize.height,1.0);
                  return Container(
                    height: screenSize.height - (screenSize.height * .2 * offScreenPercentage),
                    width: screenSize.width - (screenSize.width * .5 * offScreenPercentage),

                    child: Image.asset('asset/images/banner.jpg',fit: BoxFit.cover,),
                  );
                },
                offsetBuilder:(scrollOffset){
                  final offScreenPercentage = min(scrollOffset / screenSize.height,1.0);
                  final heightShrinkageAmount = screenSize.height * .2 * offScreenPercentage;
                  final bool startMovingImage = scrollOffset >=screenSize.height;
                  final double onScreenOffset = scrollOffset + heightShrinkageAmount / 2;
                  return Offset(0, !startMovingImage?
                      onScreenOffset :
                      onScreenOffset -(scrollOffset - screenSize.height * .8));
                },
                logOffset: true,
              ),
              ScrollTransformItem(
                builder: (context){
                  return Column(
                    children: [
                      Container(
                        child: Text('Hello, I am Samin Yeaser',style: mainStyle(
                            fontSize: 100, color: Colors.white
                        ),),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Flutter Developer',
                            textStyle: mainStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            'Built App for Android',
                            textStyle: mainStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            'Built App for IOS',
                            textStyle: mainStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            'Built Web Applications',
                            textStyle: mainStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],

                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      )
                    ],
                  );
                },
                offsetBuilder: (scrollOffset){
                  return Offset(0, -(screenSize.height - 300));
                },

              ),
              ScrollTransformItem(
                builder: (context){
                  return Stack(
                    children: [
                      Container(
                        height: 1500,
                        width: screenSize.width,
                        color: Colors.blue,
                        child: Image.asset('asset/images/samin_2.jpg',fit: BoxFit.fill,),
                      ),

                    ],
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Home',style: mainStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),),
                  const SizedBox(width: 20,),
                  Text('Contact',style: mainStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),),
                  const SizedBox(width: 20,),
                  Text('Projects',style: mainStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),),
                  const SizedBox(width: 20,),
                  Text('Resume',style: mainStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),),
                  const SizedBox(width: 20,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
