import 'package:flutter/material.dart';

import 'position_listener.dart';

class ResizableTabsVertical extends StatefulWidget {
  const ResizableTabsVertical({
    super.key,
    required this.topTab,
    required this.bottomTab,
    this.positionListener,
    this.maxFraction = 0.8,
    this.minFraction = 0.2,
  });

  final Widget topTab, bottomTab;
  final VerticalPositionListener? positionListener;
  final double maxFraction, minFraction;

  @override
  State<ResizableTabsVertical> createState() => _ResizableTabsVerticalState();
}

class _ResizableTabsVerticalState extends State<ResizableTabsVertical> {
  double dividerPosition = .5;
  bool _isDragging = false;
  final double _dividerHeight = 20.0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final themeDate = Theme.of(context);
    final topHeight = screenHeight * dividerPosition;
    final bottomHeight = screenHeight - (topHeight);

    return Stack(
      children: [
        Column(
          children: [
            Expanded(flex: topHeight.round(), child: widget.topTab),
            Expanded(flex: bottomHeight.round(), child: widget.bottomTab),
          ],
        ),
        // Divider (Draggable bar)
        Positioned(
          top: topHeight - (_dividerHeight),
          left: 0,
          right: 0,
          height: _dividerHeight,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onVerticalDragStart: (details) {
              _isDragging = true;
            },
            onVerticalDragUpdate: (details) {
              setState(() {
                dividerPosition += details.delta.dy / screenHeight;
                dividerPosition = dividerPosition.clamp(
                  widget.minFraction,
                  widget.maxFraction,
                );
              });
            },
            onVerticalDragEnd: (_) {
              setState(() {
                _isDragging = false;
              });
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.resizeRow,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: _isDragging ? themeDate.primaryColor : Colors.grey,
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: _dividerHeight,
                width: 300,
                child: Center(
                  child: Container(
                    width: _dividerHeight,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
