import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class AboutMe extends StatelessWidget {
  double? cntx;
  AboutMe({this.cntx});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Row(
        children: [
          Expanded(
              child: AnimatedOpacity(
                opacity: cntx! <= 500 ? 0.0 : 1.0,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  height: 500,
                  decoration: const BoxDecoration(
                      color: mainColor,
                      image: DecorationImage(
                          image: AssetImage('asset/images/about_me.jpg',),
                          opacity: .5,
                          fit: BoxFit.cover
                      )
                  ),

                  child: Center(
                    child: Text(
                      'About Me',
                      textAlign: TextAlign.center,
                      style: mainStyle(
                          fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              )),
          Expanded(
              child: AnimatedOpacity(
                opacity: cntx! <= 500 ? 0.0 : 1.0,
                curve: Curves.easeInBack,
                duration: const Duration(milliseconds: 800),
                child: Stack(
                  children: [
                    Container(
                      height: 500,
                      color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(
                            '''
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                     Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                                     nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                                     reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                                     pariatur. Excepteur sint occaecat cupidatat non proident, sunt in 
                                     culpa qui officia deserunt mollit anim id est laborum.
                                    ''',
                            textAlign: TextAlign.center,
                            style: mainStyle(
                                fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 150,
                      child: Column(
                        children: [
                          AnimatedOpacity(
                            duration: Duration(milliseconds: 5000),
                            curve: Curves.bounceOut,
                            opacity: cntx! <= 500 ? 0.0 : 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: InkWell(
                                onTap: (){
                                  final url = Uri.parse('https://www.facebook.com/iamsaminyeaser');
                                  launchUrl(
                                    url,
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                                  child: Image.asset('asset/images/facebook.png',height: 30,)),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: Duration(milliseconds: 10000),
                            curve: Curves.bounceOut,
                            opacity: cntx! <= 500 ? 0.0 : 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: InkWell(
                                  onTap: (){
                                    final url = Uri.parse('https://www.linkedin.com/in/samin-yeaser/');
                                    launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  },
                                  child: Image.asset('asset/images/github.png',height: 30,)),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: Duration(milliseconds: 15000),
                            curve: Curves.bounceOut,
                            opacity: cntx! <= 500 ? 0.0 : 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: InkWell(
                                  onTap: (){
                                    final url = Uri.parse('https://github.com/SaminYeaser');
                                    launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  },
                                  child: Image.asset('asset/images/linkedIn.png',height: 30,)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
