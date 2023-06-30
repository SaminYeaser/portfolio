import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ProjectItems extends StatelessWidget {

  String? description;
  String? image;
  String? projectName;
  ProjectItems({required this.description, required this.image, required this.projectName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet<void>(
          context: context,
          backgroundColor: mainColor,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          builder: (BuildContext context) {
            return Container(
              height: 300,
              decoration: const BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                       WidgetAnimator(
                         incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                           duration: Duration(milliseconds: 1000)
                         ),
                         child: Text(projectName!,style: mainStyle(
                          color: Colors.white,fontSize: 32
                      ),),
                       ),

                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 100,
        height: 100,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image!,),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}
