import 'dart:async';

class HomeViewBloc{

final StreamController streamController = StreamController();
int counter = 0;

Sink get streamInput => streamController.sink;
Stream get streamOutput => streamController.stream;

void incrementCounter(){
  counter++;
  streamInput.add(counter);
}

}