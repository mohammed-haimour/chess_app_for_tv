import 'package:en_passant/Shared/Models/playerModel.dart';

class Players{
  static Map<String , PlayerModel> players = {
    "yousef" : PlayerModel(image: "assets/images/persons/black-yousef.png", name: "يوسف"),
    "ahmed" : PlayerModel(image: "assets/images/persons/black-ahmed.png",
        name: "احمد (ابا الشص)"),
    "safa" : PlayerModel(image: "assets/images/persons/black-safa.png", name: "صفا"),
    "marwa" : PlayerModel(image: "assets/images/persons/black-marwa.png", name: "مروه"),
  };
}