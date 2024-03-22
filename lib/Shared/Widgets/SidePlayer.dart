import 'package:en_passant/Shared/Models/playerModel.dart';
import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:en_passant/Shared/Widgets/CircularImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SidePlayerInfo extends StatelessWidget {
  const SidePlayerInfo({super.key, required this.player});
  final PlayerModel player;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: Variables.paddingLarge,
      child: Column(
        children: [
          SizedBox(child: CircularImage(image: player.image , name: player.name,)),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 1,
            color: Variables.colorBlack ,
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Column(
              children: [
                Text("الحركات" , style: Variables.fontBlackSmall,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 1,
            color: Variables.colorBlack ,
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Column(
              children: [
                Text("" , style: Variables.fontBlackSmall,)
              ],
            ),
          )

        ],
      ),
      width: 200,
    );
  }
}
