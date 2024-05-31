import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class AboutMe extends StatelessWidget {
  double? cntx;
  AboutMe({this.cntx});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 800.0 ? Container(
      color: mainColor,
      child: Row(
        children: [
          Expanded(
              child: AnimatedOpacity(
                opacity: cntx! <= 500 ? 0.0 : 1.0,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  height: 700,
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
                      height: 700,
                      color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: Text(
                              '''
                              I'm Md. Samin Yeaser, a BRAC University graduate with a degree in computer science and engineering. I've been actively working in this industry since 2019 since I have a passion for Flutter development, earning expertise through a variety of projects at Hishabee Technologies, UMR laboratories, and foodeva. My interest in machine learning and artificial intelligence was further stoked during my final year when I decided to write my thesis on the topic of Detecting Social Media Racism and Bullying Using Natural Language Processing.
                              
                              I have used artificial intelligence APIs throughout my career while working on projects at foodeva. I always aim to further my expertise, thus I spend my free time studying various technologies with a current emphasis on Springboot. In my spare time, I also like to watch movies and television shows. I spend a lot of time playing PC games like Valorant and mobile games like Mobile Legend Bang Bang to break up the monotony. My gaming alias is defenderCharli.
                              
                              I have a strong desire to travel, despite having only seen a few places thus far. I have traveled to CoxsBazar, Khulna, Khoiicahora Falls, Boalia Falls, and Ruposhi Falls within my own nation. I've also got the chance to visit Kolkata overseas.
                              
                              My dedication, commitment, and love for my work are my professional assets. I am a quick learner, constantly looking for methods to get better, and I totally dedicate myself to the success of the business and the products I work on.
                              ''',
                              textAlign: TextAlign.center,
                              style: mainStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
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
    ): Container(
      color: mainColor,
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: cntx! <= 500 ? 0.0 : 1.0,
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 400,
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AnimatedOpacity(
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: AnimatedOpacity(
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: AnimatedOpacity(
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
              ),
            ],
          ),
          AnimatedOpacity(
            opacity: cntx! <= 500 ? 0.0 : 1.0,
            curve: Curves.easeInBack,
            duration: const Duration(milliseconds: 800),
            child: Container(
              // height: 500,
              color: mainColor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      ''' I'm Md. Samin Yeaser, a BRAC University graduate with a degree in computer science and engineering. I've been actively working in this industry since 2019 since I have a passion for Flutter development, earning expertise through a variety of projects at Hishabee Technologies, UMR laboratories, and foodeva. My interest in machine learning and artificial intelligence was further stoked during my final year when I decided to write my thesis on the topic of Detecting Social Media Racism and Bullying Using Natural Language Processing.
                              
I have used artificial intelligence APIs throughout my career while working on projects at foodeva. I always aim to further my expertise, thus I spend my free time studying various technologies with a current emphasis on Springboot. In my spare time, I also like to watch movies and television shows. I spend a lot of time playing PC games like Valorant and mobile games like Mobile Legend Bang Bang to break up the monotony. My gaming alias is defenderCharli.
                              
I have a strong desire to travel, despite having only seen a few places thus far. I have traveled to CoxsBazar, Khulna, Khoiicahora Falls, Boalia Falls, and Ruposhi Falls within my own nation. I've also got the chance to visit Kolkata overseas.
                              
My dedication, commitment, and love for my work are my professional assets. I am a quick learner, constantly looking for methods to get better, and I totally dedicate myself to the success of the business and the products I work on.
                              ''',
                      textAlign: TextAlign.center,
                      style: mainStyle(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
