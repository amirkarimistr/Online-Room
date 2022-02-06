// Absence presence system

import 'package:online_room/user.dart';

class RollCall {
  final int passedTime;
  final User user;

  RollCall(this.passedTime, this.user);

  bool isUserAbsent() => user.isUserLateIntoClass(passedTime);
}
