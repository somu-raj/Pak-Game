

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:pak_games/Home%20Screen/Account/account.dart';
import 'package:pak_games/Home%20Screen/Activity%20Screen/activity_screen.dart';
import 'package:pak_games/Home%20Screen/Home%20Widget/home_widget.dart';
import 'package:pak_games/Home%20Screen/Promotion%20Screen/promotion_screen.dart';
import 'package:pak_games/Home%20Screen/Wallet/wallet_screen.dart';
import 'package:pak_games/Utils/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 2;
  void _incrementCounter() {

  }
  List<Widget> widgets =[
    HomeWidget(),
    ActivityScreen(),
    PromotionScreen(),
    WalletScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: selectedIndex == 2,
        appBar: selectedIndex == 2? AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ):AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          elevation: 0,
          title: Image.asset('assets/images/pak home.png',scale: 2.5,),
          actions:  [
            Image.asset('assets/images/arrow.png'),
            SizedBox(width: 10,)
          ],
        ),
        body: widgets[selectedIndex],
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.red,
          color: AppColor.white,

          index: selectedIndex,
          items:  [
            CurvedNavigationBarItem(
              label: "Home",
              child: Icon(Icons.home,color: selectedIndex!=0? AppColor.primary:AppColor.white,),
              labelStyle: TextStyle(
                  color: selectedIndex==0? Colors.red:AppColor.primary
              ),

            ),
            CurvedNavigationBarItem(
              label: "Activity",
              labelStyle: TextStyle(
                  color: selectedIndex==1? Colors.red:AppColor.primary
              ),
              child: Icon(Icons.local_activity_outlined,color: selectedIndex!=1? AppColor.primary:AppColor.white,),

            ),
            CurvedNavigationBarItem(
              label: "Promotion",
              child: Icon(Icons.diamond_outlined,color:selectedIndex!=2? AppColor.primary: AppColor.white,),
              labelStyle: TextStyle(
                  color: selectedIndex==2? Colors.red:AppColor.primary
              ),

            ),
            CurvedNavigationBarItem(
              label: "Wallet",
              child: Icon(Icons.wallet,color:selectedIndex!=3? AppColor.primary: AppColor.white,),
              labelStyle: TextStyle(
                  color: selectedIndex==3? Colors.red:AppColor.primary
              ),

            ),
            CurvedNavigationBarItem(
              label: "Account",
              child: Icon(Icons.person,color: selectedIndex!=4? AppColor.primary:AppColor.white,),
              labelStyle: TextStyle(
                  color:selectedIndex==4? Colors.red: AppColor.primary
              ),


            )
          ],
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}