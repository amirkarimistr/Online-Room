import 'package:flutter_test/flutter_test.dart';
import 'package:online_room/online_room.dart';
import 'package:online_room/student.dart';
import 'package:online_room/teacher.dart';

void main() {
  group("OnlineRoom", () {
    //Fact
    test('throw_exception_if_teacher_comes_late_intro_class', () {
      const passedTime = 21;
      final Teacher teacher = Teacher('Mohamad');

      final sut = OnlineRoom(passedTime);

      expect(() => sut.addTeacherToClass(teacher), throwsException);
    });

    //Fact
    test('throw_exception_if_student_comes_late_intro_class', () {
      const passedTime = 11;
      final Student student = Student(name: 'Reza');

      final sut = OnlineRoom(passedTime);

      expect(() => sut.addStudentToClass(student), throwsException);
    });
    
  });
}
