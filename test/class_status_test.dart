import 'package:flutter_test/flutter_test.dart';
import 'package:online_room/class_status.dart';
import 'package:online_room/teacher.dart';

void main() {

  //Fact
  test('class_in_cancel_if_teacher_comes_after_20', () {
    const passedTime = 21;
    Teacher teacher = Teacher('Mohamad');
    ClassStatus sut = ClassStatus(passedTime);

    expect(sut.classIsCancelled(teacher), true);
  });
}
