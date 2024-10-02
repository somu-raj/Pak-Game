
import 'package:flutter/material.dart';
import 'package:pak_games/Utils/colors.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {


  List<String> textList = ["Deposit",'Withdraw','Deposit History','Withdraw history'];
  List<IconData> iconList = [Icons.wallet,Icons.widgets,Icons.wallet,Icons.wallet];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
               color: AppColor.primary,
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
                    const Text("Wallet",style: TextStyle(color: Colors.white,fontSize: 20),),
                    const SizedBox(height: 2,),
                    const Icon(Icons.wallet,color: Colors.white,size: 24,),
                    const SizedBox(height: 2,),
                    const Text("Rs.0.00",style: TextStyle(color: Colors.white,fontSize: 20),),
                    const Text("Total balance",style: TextStyle(color: Colors.white,fontSize: 12),),
                   const SizedBox(height: 8,),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:  Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: AppColor.grey1,
                                   child: CircleAvatar(
                                     radius: 34,
                                     backgroundColor: Colors.white,
                                     child: Text("0 %"),
                                   ),
                                  ),
                                   Text("Rs. 0.00",style: TextStyle(color: Colors.grey,fontSize: 16),),
                                   Text("Main Wallet",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: AppColor.grey1,
                                   child: CircleAvatar(
                                     radius: 34,
                                     backgroundColor: Colors.white,
                                     child: Text("0 %"),
                                   ),
                                  ),
                                   Text("Rs. 0.00",style: TextStyle(color: Colors.grey,fontSize: 16),),
                                   Text("3rd Party Wallet",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            width: double.infinity,
                            height: 32,
                            margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColor.redLight,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Center(child:  Text("Main Wallet Transfer", style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List<Widget>.generate(4,
                                    (index) => Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(16),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey,
                                                      offset: Offset(0, 2),
                                                      blurRadius: 3
                                                  )
                                                ]
                                            ),
                                            child: Icon(iconList[index],   color: AppColor.primary,),
                                          ),
                                          const SizedBox(height: 4,),
                                          Text(textList[index], textAlign:TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    )),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 6,),
                    SizedBox(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 20
                            ),
                            itemCount: 12,
                            itemBuilder: (_,index){
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(image: AssetImage("assets/images/Jcb.png")),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0, 1),
                                          blurRadius: 1
                                      )
                                    ]
                                ),
                                child:const Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       Text("0.00",style: TextStyle(fontSize: 14),),
                                       Text("Lottery",style: TextStyle(fontSize: 12),),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ) )
        ],
      ),
    );;
  }
}
