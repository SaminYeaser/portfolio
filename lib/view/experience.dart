import 'package:flutter/material.dart';

import '../constants.dart';
class Experience extends StatelessWidget {
  double? cntx;
  Experience({this.cntx});

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(milliseconds: 1000),
      padding: EdgeInsets.only(left: cntx! <= 500 ? 500 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                height: 700,
                color: mainColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Image.asset(
                            'asset/images/bee.png',
                            height: 30,
                            width: 30,
                          ),
                          title: Text(
                            'Hishabee Technologies',
                            style: mainStyle(
                                fontSize: 24, color: Colors.white),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flutter Developer',
                                style: mainStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                              Text(
                                '23rd September, 2021 - Present',
                                style: mainStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                'Dhaka, Bangladesh',
                                style: mainStyle(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ListTile(
                          leading: Image.asset(
                            'asset/images/foodeva_logo.png',
                            height: 30,
                            width: 30,
                          ),
                          title: Text(
                            'FoodEva',
                            style: mainStyle(
                                fontSize: 24, color: Colors.white),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Senior Flutter Developer',
                                style: mainStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                              Text(
                                '10th January, 2022 - Present',
                                style: mainStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                'NewYork, USA',
                                style: mainStyle(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              child: Container(
                height: 700,
                decoration: const BoxDecoration(
                    color: mainColor,
                    image: DecorationImage(
                        image: AssetImage('asset/images/working.jpg',),
                        opacity: .5,
                        fit: BoxFit.fill
                    )
                ),

                child: Center(
                  child: Text(
                    'Experience',
                    textAlign: TextAlign.center,
                    style:
                    mainStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
