import 'package:online_room/user.dart';

class Board {
  final User user;
  String boardContent = "";

  Board(this.user);

  String write(String text) {
    if (user.isAllowedToWriteOnBoard()) {
      return boardContent = text;
    } else {
      throw Exception('Not allow to write on board');
    }
  }

  String read() => boardContent;

}
