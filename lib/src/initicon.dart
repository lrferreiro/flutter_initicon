import 'package:flutter/material.dart';

extension on String {
  String initials() {
    String result = "";
    List<String> words = this.split(" ");
    words.forEach((element) {
      if (element.isNotEmpty && result.length < 2) {
        result += element[0];
      }
    });

    return result.trim().toUpperCase();
  }
}

class Initicon extends StatelessWidget {
  final String? text;
  final Color backgroundColor;

  /// Font color by default is smart. If background color is dark, the font color is white, else is black.
  final Color? color;
  final double size;
  final BorderRadiusGeometry? borderRadius;
  final double elevation;

  const Initicon({
    Key? key,
    this.text,
    this.backgroundColor = Colors.grey,
    this.color,
    this.size = 45,
    this.borderRadius,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: backgroundColor,
      borderRadius: borderRadius ?? BorderRadius.circular(150),
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: size,
        height: size,
        child: Center(
          child: Text(
            text!.initials(),
            style: TextStyle(
              color: color ??
                  (HSLColor.fromColor(backgroundColor).lightness < 0.8
                      ? Colors.white
                      : Colors.black87),
              fontSize: size / (text!.initials().length == 2 ? 2.5 : 1.8),
            ),
          ),
        ),
      ),
    );
  }
}
