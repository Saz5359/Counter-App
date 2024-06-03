//below are the events for the counter app

//bloc takes only one event at a time so a counter-event class is declared which
//is used to refer to multiple events/ the other events
class CounterEvent {}

//This is the increment event which extends the counter event and
//is called when we want to increment the counter
class CounterIncrement extends CounterEvent {}

//This is the decrement event which also extends the counter event and is called
//when we want to decrement the counter
class CounterDecrement extends CounterEvent {}
