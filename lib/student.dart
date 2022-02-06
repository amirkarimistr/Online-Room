import 'package:online_room/user.dart';

class Student extends User {
  final String name;
  bool allowedToWrite;
  bool hasRequestToWrite = false;

  Student({required this.name, this.allowedToWrite = false});

  @override
  bool isAllowedToWriteOnBoard() {
    return allowedToWrite ? true: false;
  }

  void requestToWriteOnBoard(){
    hasRequestToWrite = true;
  }

  @override
  bool isUserLateIntoClass(int passedTime) => passedTime > 10;
}
