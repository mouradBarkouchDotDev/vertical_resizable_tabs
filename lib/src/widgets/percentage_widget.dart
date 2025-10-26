import 'package:flutter/material.dart';

class PercentageWidget extends StatelessWidget {
  const PercentageWidget({
    super.key,
    required this.widget,
    required this.value,
  });

  final int value;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget,
        Positioned(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.black45),

            child: Center(
              child: Text(
                '$value %',
                style: TextStyle(fontSize: 34, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
