import 'package:flutter_test_application/bloc/counter_event.dart';
import 'package:flutter_test_application/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* 
Below is the counter-bloc class which extends the bloc class
Bloc requires two things to function: the event and state of the app
The event represents the event that happens in the app which could be an increase, decrease, or loading of a page
State represents the value or what is displayed in the UI or to the user
 */

//the class is declared and the app event and state are used to create the
//State management class
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //when declaring a blog a constructor and the initial state are required
  CounterBloc() : super(CounterState(count: 0)) {
    //inside the constructor we call the events and what they do when called

    //When this event is called it increases the count number
    on<CounterIncrement>((event, emit) {
      //emit is used to change the state of the counter and it changes it by
      //increasing the count
      emit(CounterState(count: state.count + 10));
    });

//When this event is called it decreases the count of the app
    on<CounterDecrement>(
        //emit is used to change the state of the counter and it changes it by
        //decreasing the count
        (event, emit) => emit(CounterState(count: state.count - 10)));
  }
}
