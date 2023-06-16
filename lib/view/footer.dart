import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Text('All right reserved by defenderCharli',style: mainStyle(
          fontSize: 18, color: Colors.grey
        ),),
      ],
    );
  }
}
