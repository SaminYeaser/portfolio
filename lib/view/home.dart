import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/view/footer.dart';
import 'package:portfolio/view/projects/projects.dart';
import 'package:portfolio/view/widget/home_banner.dart';
import 'package:portfolio/view/skill_percentage.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about.dart';
import 'experience.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController? _scrollController;

  void scrollListener() async {
    print('scroll controller${_scrollController!.position.extentBefore}');
  }

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      body: Stack(
        children: [
          ScrollTransformView(
            children: [
              ScrollTransformItem(
                builder: (context) {
                  final offScreenPercentage =
                      min(context / screenSize.height, 1.0);
                  return Container(
                    height: screenSize.height -
                        (screenSize.height * .2 * offScreenPercentage),
                    width: screenSize.width -
                        (screenSize.width * .5 * offScreenPercentage),
                    child: Image.asset(
                      'asset/images/banner.jpg',
                      fit: BoxFit.cover,
                    ),
                  );
                },
                offsetBuilder: (scrollOffset) {
                  final offScreenPercentage =
                      min(scrollOffset / screenSize.height, 1.0);
                  final heightShrinkageAmount =
                      screenSize.height * .2 * offScreenPercentage;
                  final bool startMovingImage =
                      scrollOffset >= screenSize.height;
                  final double onScreenOffset =
                      scrollOffset + heightShrinkageAmount / 2;
                  return Offset(
                      0,
                      !startMovingImage
                          ? onScreenOffset
                          : onScreenOffset -
                              (scrollOffset - screenSize.height * .8));
                },
                logOffset: true,
              ),
              ScrollTransformItem(
                builder: (context) {
                  return HomeBanner();
                },
                offsetBuilder: (scrollOffset) {
                  return Offset(0, -(screenSize.height - 300));
                },
              ),
              ScrollTransformItem(
                builder: (context) {
                  print(context);
                  return AboutMe(cntx: context,);
                },
              ),
              ScrollTransformItem(
                builder: (context) {
                  print(context);
                  return Experience(cntx: context);
                },
              ),
              ScrollTransformItem(
                builder: (context) {
                  print(context);
                  return SkillPercentage(cntx: context,);
                },
              ),
              ScrollTransformItem(
                builder: (context) {
                  print(context);
                  return Projects(cntx: context);
                },
              ),
              ScrollTransformItem(
                builder: (context) {
                  print(context);
                  return Footer();
                },
              ),
            ],
          ),
          // SingleChildScrollView(
          //   controller: _scrollController,
          //   child: ScrollTransformView(children: [
          //     ScrollTransformItem(
          //         builder: (context){
          //       print('home $context');
          //       return ;
          //     }),
          //     ScrollTransformItem(
          //         builder: (context){
          //
          //           return AnimatedOpacity(
          //             duration: Duration(milliseconds: 1000),
          //             opacity: 1,
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 20.0),
          //               child: Text(
          //                 'Home',
          //                 style: mainStyle(color: Colors.white, fontSize: 24),
          //               ),
          //             ),
          //           );
          //         }),
          //     ScrollTransformItem(
          //         builder: (context){
          //
          //           return AnimatedOpacity(
          //             duration: Duration(milliseconds: 1000),
          //             opacity: 1,
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 20.0),
          //               child: Text(
          //                 'Home',
          //                 style: mainStyle(color: Colors.white, fontSize: 24),
          //               ),
          //             ),
          //           );
          //         }),
          //     ScrollTransformItem(
          //         builder: (context){
          //
          //           return AnimatedOpacity(
          //             duration: Duration(milliseconds: 1000),
          //             opacity: 1,
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 20.0),
          //               child: Text(
          //                 'Home',
          //                 style: mainStyle(color: Colors.white, fontSize: 24),
          //               ),
          //             ),
          //           );
          //         })
          //   ]),
          // )

        ],
      ),
    );
  }
}
