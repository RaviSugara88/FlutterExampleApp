import 'package:bloc_with_depandency/presentation/widget/CustomText.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
   const CustomAppBar({Key? key,required this.title}) : super(key: key);
   final String title ;

  @override
  Widget build(BuildContext context) {
    return AppBar(title:CustomText(title: title,),centerTitle: true,);
  }
}
