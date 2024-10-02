import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pak_games/Utils/colors.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {


  List<Color> colors = [AppColor.black,AppColor.green,AppColor.redLight,AppColor.black,];

  List<String> textList = ["number of register",'Deposit number','Deposit amount','Number of people making\nfirst deposit'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: AppColor.white,
            child: const Center(
              child:  Text("Agency",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.primary
                    ),
                  ),
                   SizedBox(

                      ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                  child:Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Column(
                      children: [
                        const Text("0",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text("Yesterday's total Commission",style: TextStyle(color: Colors.white),),
                        ),
                        const SizedBox(height: 4,),
                        const Text("upgrade the level to increase commission volume",style: TextStyle(color: Colors.white)),
                        const SizedBox(height: 8,),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: double.infinity,
                                color: AppColor.shadowGrey,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person,   color: AppColor.primary,),
                                        SizedBox(width: 4,),
                                        Text("Direct Subordinates",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.person,   color: AppColor.primary,),
                                        SizedBox(width: 4,),
                                        Text("Team Subordinates",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: List<Widget>.generate(4,
                                              (index) => Column(
                                                children: [
                                                  Text("0",style: TextStyle(fontSize: 16,color: colors[index]),),
                                                  const SizedBox(height: 6,),
                                                  Text(textList[index],textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: AppColor.grey1),),
                                                ],
                                              )),
                                    ),
                                    VerticalDivider(color: AppColor.grey,thickness: 2,width: 2,),
                                    Column(
                                      children: List<Widget>.generate(4,
                                              (index) => Column(
                                            children: [
                                              Text("0",style: TextStyle(fontSize: 16,color: colors[index]),),
                                              const SizedBox(height: 6,),
                                              Text(textList[index],textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: AppColor.grey1),),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),

                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          height: 32,
                          margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Center(child:  Text("Invitation Link", style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                        ),
                        const SizedBox(height: 6,),
                        SizedBox(
                          height: 240,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: const[
                                    BoxShadow(
                                      color: AppColor.customGrey,
                                      offset: Offset(0, 2),
                                      blurRadius: 4
                                    )
                                  ]
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.copy,   color: AppColor.primary,),
                                     SizedBox(width: 6,),
                                    Text("Copy Invitation Code")
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.customGrey,
                                          offset: Offset(0, 2),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.list_alt,   color: AppColor.primary,),
                                    SizedBox(width: 6,),
                                    Text("Subordinate Data")
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.customGrey,
                                          offset: Offset(0, 2),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.currency_rupee,   color: AppColor.primary,),
                                    SizedBox(width: 6,),
                                    Text("Commission Details")
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.customGrey,
                                          offset: Offset(0, 2),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.insert_invitation,   color: AppColor.primary,),
                                    SizedBox(width: 6,),
                                    Text("Invitation rules")
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.customGrey,
                                          offset: Offset(0, 2),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.support_agent,   color: AppColor.primary,),
                                    SizedBox(width: 6,),
                                    Text("Agent Line Customer Service")
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.customGrey,
                                          offset: Offset(0, 2),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.currency_exchange_outlined,   color: AppColor.primary,),
                                    SizedBox(width: 6,),
                                    Text("Rebate Ratio")
                                  ],
                                ),
                              ),
                              Container(
                                clipBehavior: Clip.hardEdge,
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.stars_rounded,   color: AppColor.primary,),
                                        SizedBox(width: 4,),
                                        Text("Promotion data",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Column(
                                      children: [
                                        IntrinsicHeight(
                                          child: Row(
                                            children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text("0",style: TextStyle(fontSize: 16,),),
                                                  const SizedBox(height: 6,),
                                                  Text("This Week",textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: AppColor.grey1),),
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(color: AppColor.grey,thickness: 2,width: 2,),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text("0",style: TextStyle(fontSize: 16),),
                                                  const SizedBox(height: 6,),
                                                  Text("Total Commission",textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: AppColor.grey1),),
                                                ],
                                              ),
                                            ),
                                          ],),
                                        ),
                                        const SizedBox(height: 20,),
                                        IntrinsicHeight(
                                          child: Row(
                                            children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text("0",style: TextStyle(fontSize: 16,),),
                                                  const SizedBox(height: 6,),
                                                  Text("Direct Subordinate",textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: AppColor.grey1),),
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(color: AppColor.grey,thickness: 2,width: 2,),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text("0",style: TextStyle(fontSize: 16),),
                                                  const SizedBox(height: 6,),
                                                  Text("Total Number of\nSubordinates\nin the team",textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: AppColor.grey1),),
                                                ],
                                              ),
                                            ),
                                          ],),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ) )
            ],
          )
        ],
      ),
    );
  }
}
