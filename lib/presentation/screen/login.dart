import 'package:bloc_with_depandency/presentation/widget/CustomText.dart';
import 'package:flutter/material.dart';

import '../widget/CustomText.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const CustomText(title: "Log In"),
        centerTitle: true,
      ),
      body: Container(

      ),


    );
  }
}
