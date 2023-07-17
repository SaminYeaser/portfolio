import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio/view/widget/skill_widget.dart';

class SkillPercentage extends StatelessWidget {
  double? cntx;

  SkillPercentage({this.cntx});

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(milliseconds: 1000),
      padding: EdgeInsets.only(right: cntx! <= 900 ? 500 : 0),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillWidget(percentDeci: .9, percentText: '90',skill: 'Flutter',),
              SkillWidget(percentDeci: .8, percentText: '80',skill: 'HTML',),
              SkillWidget(percentDeci: .7, percentText: '70',skill: 'CSS',),
              SkillWidget(percentDeci: .8, percentText: '80',skill: 'Bootstrap',),
              SkillWidget(percentDeci: .8, percentText: '80',skill: 'Python',),
              SkillWidget(percentDeci: .85, percentText: '85',skill: 'Wordpress',),
              SkillWidget(percentDeci: .7, percentText: '70',skill: 'CI/CD',),
              SkillWidget(percentDeci: .75, percentText: '75',skill: 'Github Actions',),
              SkillWidget(percentDeci: .2, percentText: '20',skill: 'Spring Boot',),
            ],
          )
        ],
      ),
    );
  }
}
