import 'package:online_room/student.dart';
import 'package:online_room/user.dart';

class Teacher extends User {
  final String name;

  Teacher(this.name);

  bool acceptRequest(Student student){
    return student.hasRequestToWrite;
  }

  @override
  bool isAllowedToWriteOnBoard() {
    return true;
  }

  @override
  bool isUserLateIntoClass(int passedTime) => passedTime > 20;
}
