import 'package:online_room/student.dart';
import 'package:online_room/teacher.dart';

class OnlineRoom {
  List<Student> studentList = List.empty(growable: true);
  Teacher? teacher;
  int passedTime;

  OnlineRoom(this.passedTime);

  void addTeacherToClass(Teacher teacher) {
    if (!teacher.isUserLateIntoClass(passedTime)) {
      this.teacher = teacher;
    } else {
      throw Exception('Teacher is late intro class');
    }
  }

  void addStudentToClass(Student student) {
    if (!student.isUserLateIntoClass(passedTime)) {
      studentList.add(student);
    } else {
      throw Exception('Student is late into class ');
    }
  }
}
