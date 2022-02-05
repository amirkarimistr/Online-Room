import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:online_room/class.dart';


void main() {
  group('class', () {
    test(
        'class_is_canceled_if_the_teacher_do_not_show_up_after_20_minutes_after_the_start_of_class',
        () {
          //arrange
          const passedTime = 21;

          final classRoom = Class(passedTime);

          expect(classRoom.classIsCancelled(), true);
        });
  });
}
