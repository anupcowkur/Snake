import 'package:flutter/widgets.dart';
import 'package:snake/game_constants.dart';

class Apple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: PIECE_SIZE,
      height: PIECE_SIZE,
      decoration: new BoxDecoration(
          color: const Color(0xFFFF0000),
          border: new Border.all(color: const Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(PIECE_SIZE)),
    );
  }
}
