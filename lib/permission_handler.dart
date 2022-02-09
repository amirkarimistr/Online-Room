import 'package:online_room/student.dart';
import 'package:online_room/teacher.dart';

class PermissionHandler {
  final Teacher teacher;
  final Student student;

  PermissionHandler(this.teacher, this.student);

  bool acceptRequest() {
    student.requestToWriteOnBoard();

    if (teacher.acceptRequest(student)) {
      student.allowedToWrite = true;
    }
    return student.isAllowedToWriteOnBoard();
  }


  bool rejectRequest() {

    if (!teacher.acceptRequest(student)) {
      student.allowedToWrite = false;
    }
    return student.isAllowedToWriteOnBoard();
  }


  bool withdrawsPermission() {
    student.allowedToWrite = false;
    return student.isAllowedToWriteOnBoard();
  }
}
