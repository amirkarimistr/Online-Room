import 'package:online_room/user.dart';

class Student extends User {
  final String name;
  final bool allowedToWrite;

  Student({required this.name, this.allowedToWrite = false});

  @override
  bool isAllowedToWriteOnBoard() {
    return allowedToWrite ? true: false;
  }
}
