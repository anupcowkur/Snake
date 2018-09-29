import 'package:flutter/widgets.dart';
import 'package:snake/game_constants.dart';

class Apple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color(0xFFFF0000),
      width: PIECE_SIZE,
      height: PIECE_SIZE,
    );
  }
}
