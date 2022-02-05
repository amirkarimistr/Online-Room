import 'package:flutter_test/flutter_test.dart';
import 'package:online_room/rollcall.dart';

void main(){
  group('RollCall', (){
    //Fact
    test('teacher_must_be_absent_if_he_arrives_twenty_minutes_after_the_start_of_the_class', (){

      const passedTime = 21;
      final sut = RollCall(passedTime, UserType.TEACHER);

      expect(sut.userIsAbsent(), true);

    });

    //Fact
    test('student_must_be_absent_if_he_arrives_ten_minutes_after_the_start_of_the_class', (){

      const passedTime = 11;
      final sut = RollCall(passedTime, UserType.STUDENT);

      expect(sut.userIsAbsent(), true);

    });


  });
}