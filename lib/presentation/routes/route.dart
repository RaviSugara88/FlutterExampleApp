
import 'package:bloc_with_depandency/presentation/screen/fourth_screen.dart';
import 'package:bloc_with_depandency/presentation/screen/home_screen.dart';
import 'package:bloc_with_depandency/presentation/screen/second_screen.dart';
import 'package:bloc_with_depandency/presentation/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../counter_bloc.dart';

/// class used for create custom route*/
class AppRouter {
 // static const ROUTE_HOME = "/home";
//  static const ROUTE_SEARCH = "/search";
   CounterCubit _counterCubit = CounterCubit();
   Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      return MaterialPageRoute(builder: (_) => BlocProvider.value(
        value: _counterCubit,
        child: MyHomePage(title: 'Home Page'),
      ));
      case '/second':
        return MaterialPageRoute(builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: SecondScreen(),
        ));

      case '/third':
        return MaterialPageRoute(builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: ThirdScreen(),
        ));
      case '/fourth':
        return MaterialPageRoute(builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: FourthScreen(),
        ));
      default:
        return MaterialPageRoute(builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: MyHomePage(title: 'Home Page'),
        ));
    }
  }
}
