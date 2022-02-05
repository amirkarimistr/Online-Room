import 'package:flutter_test/flutter_test.dart';
import 'package:online_room/board.dart';
import 'package:online_room/rollcall.dart';
import 'package:online_room/student.dart';
import 'package:online_room/teacher.dart';
import 'package:online_room/user.dart';

void main() {
  group('Board', () {
    //FACT
    test('the_teacher_is_always_allowed_to_write_on_the_board', () {
      const preparedText = "Hello I'm your teacher";
      final User teacher = Teacher('Amir');

      final sut = Board(teacher);

      expect(sut.write(preparedText), preparedText);
    });

    // Fact
    test('throw_exception_if_the_student_is_not_allowed_to_write_on_board', () {
      const preparedText = "Hello I'm student";
      final User student = Student(name: 'Reza');
      final sut = Board(student);

      expect(() => sut.write(preparedText), throwsException);
    });

    // Fact
    test('If_the_teacher_allows_the_student_can_write_on_the_board', () {
      const preparedText = "Hello I'm student";
      final User student = Student(name: 'Reza', allowedToWrite: true);
      final sut = Board(student);

      expect(sut.write(preparedText), preparedText);
    });


  });
}
