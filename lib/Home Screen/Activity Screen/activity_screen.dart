import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pak_games/Utils/colors.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {


  List<String> textList = ["Activity\nAward", 'Betting\nRebate', 'Super\nJackpot'];
  List<String> nameTextList = ["New Member 1st Recharge Bonus",'Recharge and Get Daily-Check in Bonus'
    ,'Invitation Bonus', 'Winning Streak Bonus','Aviator High Betting Award', 'YouTube Creative Video',
    'Lucky "10" Days of Interest' ,'Mysterious Gifts',
  ];
  List<String> imageGridUrls = ['assets/images/Activity/new member.png','assets/images/Activity/dailiy.png','assets/images/Activity/invait.png',
    'assets/images/Activity/winGobanner.png','assets/images/Activity/fly.png','assets/images/Activity/youtube.png','assets/images/Activity/10day.png','assets/images/Activity/giftqqq.png',
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.primary ,
                  borderRadius: BorderRadius.circular(0)
              ),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Image.asset('assets/images/Activity/packlogoActivity.png',scale: 1.7,),
                  SizedBox(height: 20,width: 10,),
                  Text("  Activity \n  Please remember to follow the event page We will \n  launch user feedback activities from time to time ",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold))
                ],
              ),


            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(3,
                        (index) => Column(
                          children: [
                            Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColor.grey,
                                    offset: Offset(0,2),
                                    blurRadius: 2,
                                  )
                                ]
                              ),
                              child: Center(
                                child: Image.asset('assets/images/Activity/activitHome.png'),
                              ),
                            ),
                            Text(
                              textList[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ) ),
              ),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                  ,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.grey,
                                  offset: Offset(0,2),
                                  blurRadius: 2,
                                )
                              ]
                          ),
                          child: Center(
                            child: Image.asset('assets/images/Activity/activitHome.png'),
                          ),
                        ),
                        Text("Activity \n Award"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              color: AppColor.yellow,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.grey,
                                  offset: Offset(0,2),
                                  blurRadius: 2,
                                )
                              ]
                          ),
                          child: Center(
                            child: Image.asset('assets/images/Activity/acitiviyHome.png'),
                          ),
                        ),
                        Text("Betting \n rebate"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              color: AppColor.lightblue,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.grey,
                                  offset: Offset(0,2),
                                  blurRadius: 2,
                                )
                              ]
                          ),
                          child: Center(
                            child: Image.asset('assets/images/Activity/acivityHomeWin.png'),
                          ),
                        ),
                        Text("Super\nJackpot"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: 200,
                        color: AppColor.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                 // color: Colors.red,
                                 //  gradient: LinearGradient(
                                 //      colors: [ Colors.red, AppColor.white],
                                 //      begin: Alignment.topCenter,
                                 //      end: Alignment.bottomCenter
                                 //  )
                              ),
                              child: Image.asset("assets/images/Activity/gift.png"),
                            ),
                            Text("Gifts",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Enter Redemtion Code to Receive gift rewards",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),),

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12,),
                    Flexible(
                      child: Container(
                        height: 200,
                        color: AppColor.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                //  gradient: LinearGradient(
                                //      colors: [ Colors.red, AppColor.white],
                                //      begin: Alignment.topCenter,
                                //      end: Alignment.bottomCenter
                                //  )
                              ),
                              child: Image.asset("assets/images/Activity/attetd.png"),
                            ),
                            const Text("Attendance Bonus",style: TextStyle(fontWeight: FontWeight.bold),),
                            const Text('The More Consecutive Days you sign in, the higher the reward will be',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: List<Widget>.generate(
                    nameTextList.length,
                        (index) =>
                        Column(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.shadowGrey,
                                      offset: Offset(0, 2),
                                      blurRadius: 3,
                                    )
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 120,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                    ),
                                    child: Image.asset(imageGridUrls[index],fit: BoxFit.fill,),
                                  ),
                                  const SizedBox(height: 3,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(nameTextList[index],style: TextStyle(color: AppColor.black,fontWeight: FontWeight.bold),),
                                  ),
                                  const SizedBox(height: 2,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                          ],
                        ),
                  ),
                ),
                const SizedBox(height: 80,),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
