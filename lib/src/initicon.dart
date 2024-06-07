import 'package:flutter/material.dart';

extension on String {
  int _hash() {
    int hash = 0;
    for (var code in runes) {
      hash = code + ((hash << 5) - hash);
    }
    return hash;
  }

  Color toColor() {
    String color = (_hash() & 0x00FFFFFF).toRadixString(16).toUpperCase();
    String hex = "FF00000".substring(0, 8 - color.length) + color;
    return Color(int.parse(hex, radix: 16));
  }

  String initials() {
    String result = "";
    List<String> words = trim().split(" ");
    for (var element in words) {
      if (element.trim().isNotEmpty && result.length < 2) {
        result += element[0].trim();
      }
    }

    return result.trim().toUpperCase();
  }
}

final class Initicon extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final double size;
  final BorderRadiusGeometry? borderRadius;
  final double elevation;
  final TextStyle? style;
  final BoxBorder? border;

  const Initicon({
    super.key,
    required this.text,
    this.backgroundColor,
    this.size = 45,
    this.borderRadius,
    this.elevation = 0,
    this.style,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: backgroundColor ?? text.toColor(),
      borderRadius: borderRadius ?? BorderRadius.circular(150),
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(150),
          border: border,
        ),
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
              color: _color,
              fontSize: _fontSize,
            ),
            child: Text(
              text.initials(),
              style: style,
            ),
          ),
        ),
      ),
    );
  }

  Color get _color =>
      HSLColor.fromColor(backgroundColor ?? text.toColor()).lightness < 0.8
          ? Colors.white
          : Colors.black87;

  double get _fontSize => size / (text.initials().length == 2 ? 2.5 : 1.8);
}
