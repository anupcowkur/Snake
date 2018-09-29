import 'package:flutter/widgets.dart';
import 'package:snake/game_constants.dart';
import 'package:snake/snake_piece.dart';
import 'package:snake/point.dart';

class Board extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BoardState();
}

enum Direction { LEFT, RIGHT, UP, DOWN }

class _BoardState extends State<Board> {
  Direction _direction = Direction.UP;
  List<Point> snakePiecePositions = [
    Point(0.0, 0.0),
    Point(0.0, 1.0),
    Point(0.0, 2.0),
    Point(0.0, 3.0),
    Point(0.0, 4.0),
    Point(0.0, 5.0)
  ];

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: const Color(0xFFFFFFFF),
      width: BOARD_SIZE,
      height: BOARD_SIZE,
      child: Stack(
        children: _getSnakePieceWidgets(),
      ),
    );
  }

  List<Positioned> _getSnakePieceWidgets() {
    List<Positioned> snakePieces = List();
    snakePiecePositions.forEach((i) {
      snakePieces.add(Positioned(
        child: SnakePiece(),
        left: i.x * PIECE_SIZE,
        top: i.y * PIECE_SIZE,
      ));
    });

    return snakePieces;
  }

  void _grow() {
    setState(() {
      snakePiecePositions.insert(0, _getNewHeadPosition());
    });
  }

  void _move() {
    setState(() {
      snakePiecePositions.insert(0, _getNewHeadPosition());
      snakePiecePositions.removeLast();
    });
  }

  void _changeDirection(Direction direction) {
    setState(() {
      _direction = direction;
    });
  }

  Point _getNewHeadPosition() {
    var newHeadPos;

    switch (_direction) {
      case Direction.LEFT:
        var currentHeadPos = snakePiecePositions[0];
        newHeadPos = Point(currentHeadPos.x - PIECE_SIZE, currentHeadPos.y);
        break;

      case Direction.RIGHT:
        var currentHeadPos = snakePiecePositions[0];
        newHeadPos = Point(currentHeadPos.x + PIECE_SIZE, currentHeadPos.y);
        break;

      case Direction.UP:
        var currentHeadPos = snakePiecePositions[0];
        newHeadPos = Point(currentHeadPos.x, currentHeadPos.y - PIECE_SIZE);
        break;

      case Direction.DOWN:
        var currentHeadPos = snakePiecePositions[0];
        newHeadPos = Point(currentHeadPos.x, currentHeadPos.y + PIECE_SIZE);
        break;
    }

    return newHeadPos;
  }
}
