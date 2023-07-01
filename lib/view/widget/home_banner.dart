import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:universal_html/html.dart' as html;
import '../../constants.dart';

class HomeBanner extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Hello, I am Samin Yeaser',
            textAlign: TextAlign.center,
            style: GoogleFonts.arizonia(
                fontSize: 100, color: Colors.white),
          ),
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              'Flutter Developer',
              textStyle: mainStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              'Built App for Android',
              textStyle: mainStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              'Built App for IOS',
              textStyle: mainStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              'Built Web Applications',
              textStyle: mainStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        SizedBox(height: 100,),
        InkWell(
          onTap: () async{
            await showCV();
          },
          hoverColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.white, width: 1)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Resume',style: mainStyle(
                  color: Colors.white, fontSize: 32
              ),),
            ),
          ),
        ),
      ],
    );
  }
  Future<void> showCV() async {

    var bytes = await rootBundle.load("asset/images/CV_2023-07-01_MD_Samin_Yeaser.pdf"); // location of your asset file

    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    html.window.open(url, "_blank");
    html.Url.revokeObjectUrl(url);
  }
}
