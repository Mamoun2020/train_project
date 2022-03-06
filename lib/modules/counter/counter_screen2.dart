import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_project/modules/counter/cubit/States.dart';
import 'package:login_project/modules/counter/cubit/counter_cubit.dart';

// stateless contain one class provide widget
// stateful contain class
//first class provide Widget
//second class provide state from this widget
class CounterScreenCubit extends StatelessWidget{
  // int counter = 1;
  @override
  Widget build(BuildContext context) {
      // CounterCubit cubit = BlocProvider.of(context);
      // var c =CounterCubit.get(context);

    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
          listener: (context,state) {
            if(state is CounterInitialState){
              print('initial state');
            }
            if(state is CounterPlusState){
              print('Plus State ${state.counter}');
            }
          },
          builder: (context,state) => Scaffold(
            appBar: AppBar(
              title:Text(
                'Counter',
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextButton(
                    onPressed:(){
                      CounterCubit.get(context).minus();

                    },
                    child:Text(
                      'MINUS',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal:20.0,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style:TextStyle(
                        fontSize:50.0,
                        fontWeight:FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed:(){
                   CounterCubit.get(context).plus();

                    },
                    child:Text(
                      'PLUS',
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

