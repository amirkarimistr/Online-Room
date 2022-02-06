import 'package:online_room/student.dart';
import 'package:online_room/user.dart';

class Teacher extends User {
  final String name;

  Teacher(this.name);

  @override
  bool isAllowedToWriteOnBoard() {
    return true;
  }

  bool allowToWriteOnBoard(Student student) {
    student.allowedToWrite = student.hasRequestToWrite ? true : false;
    return student.isAllowedToWriteOnBoard();
  }

  bool denyToWriteOnBoard(Student student) {
    student.allowedToWrite = false;
    return student.isAllowedToWriteOnBoard();
  }

  @override
  bool isUserLateIntoClass(int passedTime) => passedTime > 20;
}
