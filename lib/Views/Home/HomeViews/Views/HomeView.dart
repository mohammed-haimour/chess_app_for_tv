import 'dart:io';
import 'package:en_passant/Shared/Functions/Functions.dart';
import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:en_passant/Shared/Widgets/CustomBtn.dart';
import 'package:en_passant/Views/PlayWithComputer/PlayWithComputerViews/Views/PlayWithComputerView.dart';
import 'package:en_passant/Views/PlayWithSomeone/PlayWithSomeoneViews/Views/PlayWithSomeoneView.dart';
import 'package:en_passant/Views/Settings/SettingsViews/Views/SettingsView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children : [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: Variables.radiusMedium,
                    color: Variables.colorBlackTransparent,
                  ),
                  width: 400,
                  height: Functions.screenWidth(context) / 3,
                  alignment: Alignment.center,
                  padding: Variables.paddingMedium,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/mainLogo.png" , width: 80,),
                      Text("Chess" ,style: Variables.fontBlackTransparentLarge),
                      Text("هذه اللعبة صممت ليوسف البطل خصيصاً" ,style: Variables.fontBlackTransparentSmall),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            color:  Variables.colorNearToBlack,
            width: Functions.screenWidth(context) / 3,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CustomBtn(
                  innnerText: "👥   العب مع واحد",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayWithSomeoneView()),);
                  },
                  width: 200,
                ),

                CustomBtn(
                  innnerText: " 💻  العب ضد الكمبيوتر",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayWithComputerView()),);
                  },
                  width: 200,
                ),

                CustomBtn(
                  innnerText: "  🛠️  الإعدادات",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsView()),);
                  },
                  width: 200,
                ),

                CustomBtn(
                  innnerText: " 🚩 خروج" ,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => exit(0)));
                  },
                  width: 200,
                ),

              ],
            ),
          ),
        ]
    );
  }
}
