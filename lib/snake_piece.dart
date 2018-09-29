import 'package:flutter/widgets.dart';
import 'package:snake/game_constants.dart';

class SnakePiece extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: PIECE_SIZE,
      height: PIECE_SIZE,
      decoration: new BoxDecoration(
          color: const Color(0xFF0080FF),
          border: new Border.all(color: const Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(PIECE_SIZE)),
    );
  }
}
