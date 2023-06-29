import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class Projects extends StatefulWidget {
  double? cntx;

  Projects({this.cntx});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool? isExpanded = false;
  bool? isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(milliseconds: 1500),
      padding: EdgeInsets.only(bottom: widget.cntx! <= 1300 ? 500 : 0),
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/projects.jpg',),
                  opacity: .5,
                  fit: BoxFit.fill
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Projects',style: mainStyle(
                    fontSize: 42,
                    color: Colors.white
                  ),),
                  SizedBox(height: 30,),
                  GridView(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 /.5
                  ),
                    children: [
                      InkWell(
                        onTap: (){
                          showModalBottomSheet<void>(
                            context: context,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width,
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                height: 300,

                                color: Colors.amber,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text('Modal BottomSheet'),
                                      ElevatedButton(
                                        child: const Text('Close BottomSheet'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
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
                            image: const DecorationImage(
                                image: AssetImage('asset/images/hishabee.JPG',),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/homme.JPG',),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Container(
                        // width: 100,
                        // height: 100,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/foodeva.JPG',),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Container(
                        // width: 100,
                        // height: 100,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/salebee.JPG',),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Container(
                        // width: 100,
                        // height: 100,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/hishabee_app_builder.jpg',),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Container(
                        // width: 100,
                        // height: 100,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/ebhubon.jpg',),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),


                  AnimatedSize(
                    duration: Duration(milliseconds: 500),
                    child: ConstrainedBox(
                        constraints: isExpanded! ? BoxConstraints() : BoxConstraints(maxHeight: 0),
                        child: Container(
                          height: 400,
                          color: Colors.red,
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        isExpanded = !isExpanded!;
                      });
                    },
                    // onHover: (value){
                    //   setState(() {
                    //     isHover = true;
                    //   });
                    // },
                    hoverColor: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.white, width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(isExpanded! ? 'Close' : 'Load More',style: mainStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
