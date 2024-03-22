import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key, required this.image , required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(name , style: Variables.fontBlackSmall,)
          ,
          SizedBox(
            width: 50,
            height: 50,
            child: ClipOval(
              child: Image.asset(
                image, // Replace 'your_image.png' with your asset image path
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
