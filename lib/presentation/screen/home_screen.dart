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
      floatingActionButton: Row(
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
