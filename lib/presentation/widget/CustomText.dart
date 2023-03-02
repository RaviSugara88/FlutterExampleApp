import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.title}) : super(key: key);
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: Colors.white
    ),);
  }
}