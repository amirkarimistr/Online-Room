import 'package:online_room/rollcall.dart';
import 'package:online_room/user.dart';

class Board {
  final User user;
  Board(this.user);

  String write(String text) {
    if (user.isAllowedToWriteOnBoard()) {
      return text;
    } else {
      throw Exception('Message ');
    }
  }
}
