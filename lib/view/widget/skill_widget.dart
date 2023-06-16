import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio/constants.dart';

class SkillWidget extends StatelessWidget {
  double? percentDeci;
  String? percentText;
  String? skill;
  SkillWidget({required this.percentDeci, required this.percentText, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 8.0,
            percent: percentDeci!,
            animation: true,
            curve: Curves.easeInCirc,
            animationDuration: 5000,
            center: Text('${percentText!}%', style: mainStyle(
              color: Colors.white,fontSize: 18
            ),),
            progressColor: Color(0xFF0D1B43),
          ),
        ),
        const SizedBox(height: 10,),
        Text(skill!, style: mainStyle(
            color: Colors.white,
          fontSize: 18
        ),),
      ],
    );
  }
}
