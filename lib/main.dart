import 'package:bloc_with_depandency/counter_bloc.dart';
import 'package:bloc_with_depandency/presentation/routes/route.dart';
import 'package:bloc_with_depandency/presentation/screen/home_screen.dart';
import 'package:bloc_with_depandency/presentation/screen/second_screen.dart';
import 'package:bloc_with_depandency/presentation/screen/third_screen.dart';
import 'package:bloc_with_depandency/utility/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = AppBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);
  final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /** create Named route for navigation like Android Navigation Component*/
     /* routes: {
        '/': (context) => BlocProvider(
            create: (context) => _counterCubit,
        child: MyHomePage(title: 'Flutter Demo Home Page'),),
        '/second': (context) => BlocProvider(
          create: (context) => _counterCubit,
          child: SecondScreen(),),
        '/third': (context) => BlocProvider.value(
          value: _counterCubit,
          child: ThirdScreen(),),

      },*/

      /** create GenerateRoute for navigation like Android Navigation Component*/

      onGenerateRoute: _appRouter.generateRoute,
     /** if not used routes used this /
     home: BlocProvider(
        create: (_) => CounterCubit(),
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),*/

    );
  }

/*
  @override
  void dispose(){
    super.dispose();
  }
*/

}
