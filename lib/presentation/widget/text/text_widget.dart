import 'package:flutter/material.dart';

// Widget textWidget(
//     {required String text,
//     double? size,
//     Color? color,
//     FontWeight? weight,
//     TextOverflow? overflow}) {
//   return Text(
//     text,
//     style: TextStyle(
//         fontSize: size,
//         color: color,
//         fontWeight: weight,
//         overflow: overflow ?? TextOverflow.ellipsis),
//   );
// }

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget(
      {super.key,
      required this.text,
      this.size,
      this.weight,
      this.color,
      this.overflow});

  final String text;
  double? size;
  Color? color;
  FontWeight? weight;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
          overflow: overflow ?? TextOverflow.ellipsis),
    );
  }
}
