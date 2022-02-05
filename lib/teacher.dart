import 'package:online_room/user.dart';

class Teacher extends User {
  final String name;

  Teacher(this.name);

  @override
  bool isAllowedToWriteOnBoard() {
    return true;
  }

  @override
  bool isUserAbsent(int passedTime) => passedTime > 20;
}
