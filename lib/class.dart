import 'package:online_room/online_room.dart';

class Class {
  final int passedTime;
  Class(this.passedTime);


  bool classIsCancelled(){
    return passedTime >= 20;
  }

}
