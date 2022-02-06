import 'package:online_room/user.dart';

class ClassStatus{
  final int passedTime;

  ClassStatus(this.passedTime);

  bool classIsCancelled(User user) => user.isUserLateIntoClass(passedTime);
}