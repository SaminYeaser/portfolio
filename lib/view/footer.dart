import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                  onTap: (){
                    final url = Uri.parse('https://www.facebook.com/iamsaminyeaser');
                    launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Image.asset('asset/images/facebook.png',height: 20,)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                  onTap: (){
                    final url = Uri.parse('https://www.linkedin.com/in/samin-yeaser/');
                    launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Image.asset('asset/images/github.png',height: 20,)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                  onTap: (){
                    final url = Uri.parse('https://github.com/SaminYeaser');
                    launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Image.asset('asset/images/linkedIn.png',height: 20,)),
            ),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
