import 'package:flutter/material.dart';

extension on String {
  String initials() {
    String result = "";
    List<String> words = this.split(" ");
    words.forEach((element) {
      if (element.isNotEmpty && result.length < 2) {
        result += element.characters.first;
      }
    });

    return result.trim().toUpperCase();
  }
}

class Initicon extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color color;
  final double size;
  final BorderRadiusGeometry borderRadius;

  const Initicon({
    Key key,
    @required this.text,
    this.backgroundColor = Colors.grey,
    this.color,
    this.size = 45,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(150),
      ),
      clipBehavior: Clip.antiAlias,
      child: Center(
        child: Text(
          text.initials(),
          style: TextStyle(
            color: color ??
                (HSLColor.fromColor(backgroundColor).lightness < 0.8
                    ? Colors.white
                    : Colors.black87),
            fontSize: size / (text.initials().length == 2 ? 2.5 : 1.8),
          ),
        ),
      ),
    );
  }
}
