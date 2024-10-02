import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pak_games/Utils/colors.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage('assets/images/banner.png'))
              ),
        
        
            ),
            const SizedBox(height: 10,),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.shadowGrey,
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  )
                ]
              ),
              child: Row(
                children: [
                  Icon(Icons.spatial_audio_off,color: Colors.red,),
                  const SizedBox(width: 6,),
                  Flexible(child: Text(
                      "Attention! Attention! To all Pak "
                          "Games members, currently our "
                          "customer service is....",
                    style: TextStyle(fontSize: 12),
                  )),
                  const SizedBox(width: 6,),
                  Container(
                    height: 28,
                    width: 64,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(child: Text(
                          "Details",
                          style: TextStyle(color:Colors.white,fontSize: 12),
                        )),
                      ],
                    ) ,
        
                  ),
                ],
              ),
        
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/popularback.png',scale: 2.2,),
                    Positioned(
                      left: 10,
                      right: 0,
                      top: 0,bottom: 0,
                      child: Column(
                        children: [
                          Image.asset('assets/images/popular.png',scale:2.1,),
                        SizedBox(height: 5,),
                        Text("Popular",style: TextStyle(color: Colors.white))
                        ],
                      ))
                  ],
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/lotteryback.png',scale: 2.2,),
                    Positioned(
                        left: 10,
                        right: 0,
                        top: 0,bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/lotter.png',scale:2.2,),
                            SizedBox(height: 5,),
                            Text("Lottery",style: TextStyle(color: Colors.white))
                          ],
                        ))
                  ],
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/sloteback.png',scale: 2.2,),
                    Positioned(
                        left: 10,
                        right: 0,
                        top: 0,bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/slote.png',scale:2.2,),
                            SizedBox(height: 5,),
                            Text("Slots",style: TextStyle(color: Colors.white))
                          ],
                        ))
                  ],
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/sport.png',scale:2.6,),
                        Text("Sports",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/casino.png',scale:2.6,),
                        Text("Casino",style: TextStyle(color: Colors.white),),
                      ],
                    ),

                    VerticalDivider(
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/rummey.png',scale:2.6,),
                        Text("Rummy",style: TextStyle(color: Colors.white),),
                      ],
                    ),

                  ],
                ),
              ),
        
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: AppColor.yellow,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Image.asset('assets/images/fishing.png',scale:3.0,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,right: 10),
                          child: Text("Fishing",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    )
                  
                  ),
                ),
                const SizedBox(width: 16,),
                Flexible(
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: AppColor.original,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Image.asset('assets/images/original.png',scale:3.0,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,right: 10),
                            child: Text("Original",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      )

                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16)
                  ),
                ),
                const SizedBox(width: 6,),
                const Text("Lottery",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
            // Column(
            //   children: List.generate(3,
            //           (index) => Column(
            //             children: [
            //               Container(
            //                 height: 100,
            //                 width: double.infinity,
            //                 decoration: BoxDecoration(
            //                     color: AppColor.primary,
            //                     borderRadius: BorderRadius.circular(20)
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //
            //                     Padding(
            //                       padding: const EdgeInsets.only(left: 10),
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.start,
            //                         children: [
            //                           SizedBox(height: 10,),
            //                           Text("Win Go",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 18),),
            //                           SizedBox(height: 10,),
            //                           Text("Guess the number\nGreen/Red/Purple to win",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold),),
            //                         ],
            //                       ),
            //                     ),
            //                     Image.asset('assets/images/wingo.png')
            //                   ],
            //                 ),
            //
            //
            //               ),
            //               const SizedBox(height: 10,),
            //             ],
            //           )),
            // ),

           Column(
             children: [
               Container(
                 height: 100,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     color: AppColor.primary,
                     borderRadius: BorderRadius.circular(20)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 10,),
                           Text("Win Go",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 18),),
                           SizedBox(height: 10,),
                           Text("Guess the number\nGreen/Red/Purple to win",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Image.asset('assets/images/wingo.png',scale: 3,)
                   ],
                 ),


               ),
               SizedBox(height: 10,),
               Container(
                 height: 100,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     color: AppColor.primary,
                     borderRadius: BorderRadius.circular(20)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 10,),
                           Text("K3",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 18),),
                           SizedBox(height: 10,),
                           Text("Guess the number\nBig/Small/Odd/Even",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Image.asset('assets/images/k3.png',scale: 3,)
                   ],
                 ),


               ),
               SizedBox(height: 10,),
               Container(
                 height: 100,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     color: AppColor.primary,
                     borderRadius: BorderRadius.circular(20)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 10,),
                           Text("5D",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 18),),
                           SizedBox(height: 10,),
                           Text("Guess the number\nBig/Small/Odd/Even",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Image.asset('assets/images/5d.png',scale: 3,)
                   ],
                 ),


               ),
               SizedBox(height: 10,),
               Container(
                 height: 100,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     color: AppColor.primary,
                     borderRadius: BorderRadius.circular(20)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 10,),
                           Text("Trx Win",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 18),),
                           SizedBox(height: 10,),
                           Text("Guess the number\nGreen/Red/Purple to win  ",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold),),
                         ],
                       ),
                     ),
                     Image.asset('assets/images/trx.png',scale: 3,)
                   ],
                 ),


               ),
             ],
           ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 28,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
                const SizedBox(width: 6,),
                const Text("Winning Information",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
           /* Column(
              children: List.generate(3,
                      (index) => Column(
                    children: [
                      Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.shadowGrey,
                              offset: Offset(0, 2),
                              blurRadius: 2
                            )
                          ]
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 6,),
                            Text("Lorem Ipsum",style: TextStyle(fontSize: 12))
                          ],),
                          Row(

                            children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey
                              ),
                            ),
                            const SizedBox(width: 6,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Receive Rs.1200",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text("Winning Amount",style: TextStyle(fontSize: 13,),),
                              ],
                            )
                          ],),
                        ],
                      ),

                      ),
                      const SizedBox(height: 10,),
                    ],
                  )),
            ),*/

            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.shadowGrey,
                        offset: Offset(0, 2),
                        blurRadius: 2
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [

                    Container(
                      height: 50,
                      width: 50,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/mem.png",fit: BoxFit.fill,)),
                    ),
                    const SizedBox(width: 6,),
                    Text("Mem***FIM",style: TextStyle(fontSize: 12))
                  ],),
                  Row(

                    children: [
                      Container(
                        height: 45,
                        width: 64,
                        decoration: BoxDecoration(
                            //shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(10),
                            color: AppColor.primary

                        ),
                        child: Image.asset("assets/images/trx.png",scale: 5,),
                      ),
                      const SizedBox(width: 6,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Recieve Rs170.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          Text("Winning Amount",style: TextStyle(fontSize: 13,),),
                        ],
                      )
                    ],),
                ],
              ),

            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.shadowGrey,
                        offset: Offset(0, 2),
                        blurRadius: 2
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                    Container(
                      height: 50,
                      width: 50,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/girl.png",fit: BoxFit.fill,)),
                    ),
                    const SizedBox(width: 6,),
                    Text("Mem***VNW",style: TextStyle(fontSize: 12))
                  ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 64,
                        decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.primary

                        ),
                        child: Image.asset("assets/images/5d.png",scale: 5,),
                      ),
                      const SizedBox(width: 6,),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Recieve Rs30.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          Text("Winning Amount",style: TextStyle(fontSize: 13,),),
                        ],
                      )
                    ],),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 28,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
                const SizedBox(width: 6,),
                const Text("Today's Earning Chart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
            Stack(children: [
              Image.asset('assets/images/todayaimage.png'),
              Positioned(
                left: 20,

                child: Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/images/n2.png",fit: BoxFit.fill,)),
              ),

              ),
              Positioned(
                left: 150,
                child: Container(
                  height: 60,
                  width: 50,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/n2.png",fit: BoxFit.fill,)),
                ),

              ),
              Positioned(
                left: 250,
                child: Container(
                  height: 50,
                  width: 50,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/n2.png",fit: BoxFit.fill,)),
                ),

              )
            ],),
            const SizedBox(height: 10,),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.shadowGrey,
                        offset: Offset(0, 2),
                        blurRadius: 2
                    )
                  ]
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text("4",style: TextStyle(color: AppColor.grey),),
                     SizedBox(width: 15,),
                      Container(
                        height: 50,
                        width: 50,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/todaybay.png",fit: BoxFit.fill,)),
                      ),
                      const SizedBox(width: 6,),
                      Text("Mem***DYB",style: TextStyle(fontSize: 12))
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.primary1

                    ),
                    child: Center(child: Text("Rs896,379.74",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.white),)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.shadowGrey,
                        offset: Offset(0, 2),
                        blurRadius: 2
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text("5",style: TextStyle(color: AppColor.grey),),
                      SizedBox(width: 15,),
                      Container(
                        height: 50,
                        width: 50,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/todayuncle.png",fit: BoxFit.fill,)),
                      ),
                      const SizedBox(width: 6,),
                      Text("Mem***AQB",style: TextStyle(fontSize: 12))
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.primary1

                    ),
                    child: Center(child: Text("Rs865,144.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.white),)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                    color: AppColor.red,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset('assets/images/pak game.png',scale:1.0,),
                    ),
                    SizedBox(width: 10,),
                    Text("Add to Desktop",style: TextStyle(color: Colors.white),),
                    VerticalDivider(
                      color: Colors.white,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                )

            ),
            const SizedBox(height: 90,),
          ],
        
        ),
      ),
    );
  }
}
