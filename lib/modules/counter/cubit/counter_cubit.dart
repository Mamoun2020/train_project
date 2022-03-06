import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'States.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 1;

  void minus(){
    counter--;
    // emit(state); // means change state
    emit(CounterMinusState(counter));
  }
  void plus(){
    counter++;
    emit(CounterPlusState(counter));
  }
}