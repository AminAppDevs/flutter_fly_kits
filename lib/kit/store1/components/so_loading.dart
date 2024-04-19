import 'package:flutter/material.dart';

class SOLoading extends StatelessWidget {
  const SOLoading({super.key, this.width = 25, this.height = 25, this.color = Colors.white});
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: 2,
      ),
    );
  }
}
