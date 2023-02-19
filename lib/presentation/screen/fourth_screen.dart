import 'package:flutter/material.dart';
import 'package:bloc_with_depandency/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FourthScreen"),
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
            TextButton(onPressed: () {

            },
                child: Text("Open Next Screen"))
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
