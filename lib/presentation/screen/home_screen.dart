import 'package:bloc_with_depandency/counter_bloc.dart';
import 'package:bloc_with_depandency/presentation/screen/second_screen.dart';
import 'package:bloc_with_depandency/presentation/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        elevation: 10,
        mini: false,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0 ,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home,color: Colors.white,),
                  Text("Home",style: TextStyle(color: Colors.white),)
                ],
              ),),
            Padding(padding: EdgeInsets.only(right:10.0,top: 10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.settings,color: Colors.white,),
                  Text("settings",style: TextStyle(color: Colors.white),)
                ],
              ),),
            Padding(padding:const EdgeInsets.only(right: 10.0,top: 10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.details,color: Colors.white,),
                  Text("Detail",style: TextStyle(color: Colors.white),)
                ],
              ),),
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.link,color: Colors.white,),
                  Text("Link",style: TextStyle(color: Colors.white),)
                ],
              ),),

          ],
        ),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Column(
          children: [
            SizedBox(height: 20,),
            Center(child: Text('$count',
              style:TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
              ) ,)),
            MaterialButton(
              color: Colors.green,
                child: Text("Go to Second Screen",
                style: TextStyle(color: Colors.white),),
                onPressed: () {
               Navigator.of(context).push(
                 MaterialPageRoute(
                     builder: (_) => BlocProvider.value(
                       /** pass Block Provider instance in next screen through @[Anonymous Routing]*/
                       value: BlocProvider.of<CounterCubit>(context),
                       child: SecondScreen(),
                     ))
               );
            },
                ),
            SizedBox(height: 25,),
            MaterialButton(
              color: Colors.yellow,
              child: Text("Go to Third Screen",
                style: TextStyle(color: Colors.white),),
                onPressed: () {
                /** Navigate Through Named Routing */
                Navigator.of(context).pushNamed('/third');
              },
            ),
          ],
        ),
      ),
    /*  floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: ()=> context.read<CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 8,),
          FloatingActionButton(
            onPressed: ()=> context.read<CounterCubit>().decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ), */// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
