// Absence presence system

enum UserType { TEACHER, STUDENT }

class RollCall {
  final int passedTime;
  final UserType userType;

  RollCall(this.passedTime, this.userType);

  bool userIsAbsent() {
    if (userType == UserType.TEACHER) {
      if (passedTime > 20) {
        return true;
      }
    } else {
      if (passedTime > 10) {
        return true;
      }
    }

    return false;
  }
}
