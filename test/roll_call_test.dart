import 'package:flutter_test/flutter_test.dart';
import 'package:online_room/rollcall.dart';
import 'package:online_room/student.dart';
import 'package:online_room/teacher.dart';
import 'package:online_room/user.dart';

void main() {
  group('RollCall', () {
    //Fact
    test(
        'teacher_must_be_absent_if_he_arrives_twenty_minutes_after_the_start_of_the_class',
        () {
      const passedMinutes = 21;
      final User teacher = Teacher('Amir');

      final sut = RollCall(passedMinutes, teacher);

      expect(sut.isUserAbsent(), true);
    });

    //Fact
    test(
        'student_must_be_absent_if_he_arrives_ten_minutes_after_the_start_of_the_class',
        () {
      const passedMinutes = 11;
      final User student = Student(name: 'Reza');
      final sut = RollCall(passedMinutes, student);

      expect(sut.isUserAbsent(), true);
    });
  });
}
