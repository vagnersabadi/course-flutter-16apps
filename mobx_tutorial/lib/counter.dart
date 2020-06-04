//import 'package:mobx/mobx.dart';
//
//class  Counter {
//
//  Counter(){
//    increment = Action(_increment);
//  }
//
//  // state
//  Observable _count = Observable(0);
//  int get count => _count.value;
//
//  Action increment;
//  void _increment(){
//    _count.value++;
//  }
//
//
//}
import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class  _Counter with Store{


  // state
  @observable
  int count = 0;

  @action
  void increment(){
    count++;
  }


}