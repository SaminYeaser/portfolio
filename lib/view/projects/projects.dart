import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/view/projects/widgets/projects_item.dart';

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
      duration: Duration(milliseconds: 2500),
      padding: EdgeInsets.only(top: widget.cntx! <= 1300 ? 500 : 0),
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
                      ProjectItems(
                        description: 'Hishabee is a full-service POS that is helping over 100,000 Bangladeshi small businesses save time and increase their revenue by selling online, getting access to finance, and everything else they need to run efficiently.',
                        image: 'asset/images/hishabee.JPG',
                        projectName: 'Hishabee Business Manager',
                        myContribution: 'On this mobile software we provide to Set up your own business website in 60 seconds, connect your own domain and start selling immediately, '
                            'Generate invoices for your customers and send them receipts with the Hishabee app.'
                            'Record all sales, expenses, and due information on the cloud with automated backup.'
                            'Get a detailed, financial report of your business performance every day / week /month.'
                            'Keep track of all your inventory and automatically adjust your stock, '
                            'Manage all your customers, employees and suppliers from one platform.'
                            'Get access to Facebook and Google ads without the need of having an international credit card.'
                            ''
                            'I have worked with this app for IOS release, while working in the app I learned team collaboration, git and github '
                            'and most importantly I have learned what flutter is. It was my first project and the benefit of getting'
                            ' big projects while learning is get to know the core concept of the platform from the scratch '
                            'I have worked with API connection, passing data through database and frontend, instant messaging, contact share and retrieve, '
                            'CRUD operations, state management, Expense controller, whole business overview, mathmatical caluclation of the app, '
                            'EMI functionality, online shop, stock , digital payment',
                        projectLinkName: 'Hishabee Business Manager App',
                        projectLink: 'https://play.google.com/store/apps/details?id=com.hishabee.business&hl=en&gl=US',
                      ),
                      ProjectItems(
                        description: 'A real state mobile application. Where any user can purchase hotel rent,'
                            'apartment rent, communicate with the landowner through the app',
                        image: 'asset/images/homme.JPG',
                        projectName: 'Hoome',
                        myContribution: 'This app is launched in both AppStore and Playstore. I have worked in the '
                            'instant video chatting, instant messaging, implementing ably and agora SDK in the app '
                            'review system in the apartment spaces, multiple country authentication, notification api integration ',
                        projectLink: '',
                        projectLinkName: '',
                      ),
                      ProjectItems(
                        description: 'With Foodeva, you can effortlessly prioritize your physical and mental health, '
                            'making positive choices that nurture your body, mind, and spirit. '
                            'Whether you\'re seeking to improve your fitness level, reduce stress, maintain a balanced diet, '
                            'or find inner peace, our app offers a wide range of tools and resources to guide you towards your goal',
                        image: 'asset/images/foodeva.JPG',
                        projectName: 'FoodEva: Your Wellness Guide',
                        myContribution: '',
                        projectLink: 'https://play.google.com/store/apps/details?id=com.foodeva.foodeva',
                        projectLinkName: 'FoodEva: Your Wellness Guide',
                      ),
                      ProjectItems(
                        description: 'SaleeBee is a employment management system',
                        image: 'asset/images/salebee.jpg',
                        projectName: 'SaleBee',
                        myContribution: 'In the app I have made all the complicated User Interfaces(UI). '
                            'There were about 70+ UI screen in the app',
                        projectLinkName: '',
                        projectLink: '',
                      ),
                      ProjectItems(
                        description: 'Native App that connects directly to your Hishabee Online Store. Get more customers and organize your orders in one place.'
                            'Hishabee provide an advanced app builder that allows to make dynamic mobile applications without the need to write a single line of code. '
                            'You just drag and drop elements, edit and you will have a mobile application in minutes. '
                            'Hishabee Business Manager Provide user to make their own native e-commerce mobile application '
                            'within a click. Just in 2 clicks customer will have their own application demo apk in their email and after just a few '
                            'subscription fee for playstore, user can have their own mobile app in PlayStore',
                        image: 'asset/images/hishabee_app_builder.jpg',
                        projectName: 'Hishabee App Builder',
                        myContribution: 'This is a Flutter Web Application, with full e-commerce functionality and '
                            'automated app build functionality. Whole web application is made with flutter, integrated REST API '
                            'github API for github actions, added payment Bangladeshi integration in the application, '
                            'wrote manual github workflow, workflow dispatch with email and actions for flutter launcher icons change, '
                            'flutter name changes, package name changes ,'
                            'wrote mail github actions for sending the apk in mail, app build and release furthermore '
                            'added the whole functionality for apk and abb file release. Finally implemented fastlane '
                            'to publish the app in PlayStore. On the other hand, for newer customer added registration and login workflow, '
                            'to have their mobile app with no shop with hishabee account. For this, added demo products in the app '
                            'with 8 types of e-commerce app type',
                        projectLink: 'https://hishabee.github.io/#/',
                        projectLinkName: 'Hishabee App Builder',
                      ),
                      ProjectItems(
                        description: 'By using this app, any customer can buy any products '
                            'from any seller/vendor. Once you add your product to cart, just '
                            'confirm your checkout process with maximum 3/4 button click and you are '
                            'done. Our special delivery team will bring your expected product at your '
                            'door step.',
                        image: 'asset/images/ebhubon.JPG',
                        projectName: 'Ebhubon',
                        myContribution: 'E-commerce functionality with REST API, state management and User Interface(UI)',
                        projectLinkName: 'Ebhubon',
                        projectLink: 'https://play.google.com/store/apps/details?id=com.ebhubon.customer',
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
                          child: GridView(
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 20,
                                childAspectRatio: 1 /.5
                            ),
                            children: [
                              ProjectItems(
                                description: 'E-commerce mobile application for Hishabee Advance Package holder '
                                    'customers. Where they can sell their shop products through their apps '
                                    'including delivery fee for different district, local payment method along with '
                                    'cards payment methods. Instant chatting with shop owner about their product',
                                image: 'asset/images/ecom_theme.JPG',
                                projectName: 'Hishabee E-commerce App',
                                myContribution: 'Fully functional E-com mobile app compatible for both android and IOS '
                                    'REST API, pusher implemented for instant chatting, local database management, '
                                    'webview payment methods, review, order list, orders, address management. etc ',
                                projectLink: 'https://play.google.com/store/apps/developer?id=HTL+APPS',
                                projectLinkName: 'All Hishabee Ecommerce app',
                              ),
                              ProjectItems(
                                description: 'Multiple theme for hishabee e-commerce apps',
                                image: 'asset/images/hishabee_theme.jpg',
                                projectName: 'Hishabee E-commerce App Themes',
                                myContribution: 'Fully functional themes for the E-commerce mobile application. Light theme, '
                                    'classic theme and dark theme',
                                projectLinkName: 'Hishabee E-commerce app themes',
                                projectLink: '',
                              ),
                              ProjectItems(
                                description: 'Application for women protection, where user can send message,'
                                    'call the their wanted people, set an emergency alarm, post blogs and a make women '
                                    'community and also send GPS location address to contacts people',
                                image: 'asset/images/fearless.JPG',
                                projectName: 'Fearless',
                                myContribution: 'Make the whole project using firebase integration and login/registration, '
                                    'users, blogs database, GPS location, contacts, messaging ',
                                projectLink: 'https://www.youtube.com/watch?v=WNjWkBruZho',
                                projectLinkName: 'Fearless App Video',
                              ),
                            ],
                          ),
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
