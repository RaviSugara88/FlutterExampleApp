import 'dart:async';

import 'package:bloc_with_depandency/counter_bloc.dart';
import 'package:bloc_with_depandency/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocBuilder<CounterCubit,int>(
        builder: (context, count) =>  Center(
          child: Image.network(
              'https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png'),
        ),
      ),
    );
      
        
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=> Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (_) => BlocProvider.value(
                  value: BlocProvider.of<CounterCubit>(context),
                  child: MyHomePage(title: "Home Page"),
                ),
              ),
                  (route) => false,//if you want to disable back feature set to false
            )

    );
  }
/*
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.of(context).push(
                MaterialPageRoute(builder:
                    (_) => BlocProvider.value(
                  value: BlocProvider.of<CounterCubit>(context),
                  child: MyHomePage(title: "Home Page"),
                )
                )
            )

    );

  }
*/

  
  /* Center(
      child: Image.network(
          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
    );*/
}
