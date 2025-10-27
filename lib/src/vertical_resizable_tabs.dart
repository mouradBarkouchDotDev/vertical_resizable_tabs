import 'package:flutter/material.dart';
import 'position_listener.dart';

/// A widget that displays two vertically resizable panels separated by a draggable divider.
///
/// The [VerticalResizableTabs] widget allows users to resize two vertically stacked
/// sections (`topTab` and `bottomTab`) by dragging a divider in between.
///
/// This can be useful for split-screen layouts, editors, dashboards, or any
/// interface where adjustable panels are needed.
///
/// Example:
/// ```dart
/// VerticalResizableTabs(
///   topTab: Container(color: Colors.blue, child: Center(child: Text('Top'))),
///   bottomTab: Container(color: Colors.green, child: Center(child: Text('Bottom'))),
///   maxFraction: 0.8,
///   minFraction: 0.2,
/// )
/// ```
class VerticalResizableTabs extends StatefulWidget {
  /// Creates a [VerticalResizableTabs] widget.
  ///
  /// Both [topTab] and [bottomTab] are required and represent the two panels.
  /// You can also specify the maximum and minimum height fractions for resizing.
  const VerticalResizableTabs({
    super.key,
    required this.topTab,
    required this.bottomTab,
    this.positionListener,
    this.maxFraction = 0.8,
    this.minFraction = 0.2,
    this.radius = 12,
  });

  /// The top panel widget.
  final Widget topTab;

  /// The bottom panel widget.
  final Widget bottomTab;

  /// Optional listener that can be used to track the divider position changes.
  ///
  /// Useful for synchronizing layout changes or persisting the divider position.
  final VerticalPositionListener? positionListener;

  /// The maximum height ratio that the top panel can occupy.
  ///
  /// For example, `0.8` means the top panel can take up to 80% of the available height.
  final double maxFraction;

  /// The minimum height ratio that the top panel can occupy.
  ///
  /// For example, `0.2` means the top panel cannot shrink below 20% of the available height.
  final double minFraction;

  /// The corner radius applied to both panels.
  final double radius;

  @override
  State<VerticalResizableTabs> createState() => _VerticalResizableTabsState();
}

class _VerticalResizableTabsState extends State<VerticalResizableTabs> {
  /// Tracks the current divider position as a fraction of total height.
  double dividerPosition = 0.5;

  /// Indicates if the user is currently dragging the divider.
  bool _isDragging = false;

  /// The fixed height of the draggable divider handle.
  final double _dividerHeight = 20.0;

  @override
  Widget build(BuildContext context) {
    // Compute total available height excluding the divider handle.
    final screenHeight = MediaQuery.of(context).size.height - _dividerHeight;

    // Get the current app theme.
    final themeData = Theme.of(context);

    // Calculate dynamic heights for top and bottom panels.
    final topHeight = screenHeight * dividerPosition;
    final bottomHeight = screenHeight - topHeight;

    // Create a rounded radius for top and bottom corners.
    final radius = Radius.circular(widget.radius);

    return Column(
      children: [
        // --- Top Resizable Panel ---
        Expanded(
          flex: topHeight.round(),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: radius,
              bottomRight: radius,
            ),
            child: widget.topTab,
          ),
        ),

        // --- Divider Handle ---
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onVerticalDragStart: (_) {
            _isDragging = true;
          },
          onVerticalDragUpdate: (details) {
            setState(() {
              // Adjust divider position based on drag movement.
              dividerPosition += details.delta.dy / screenHeight;

              // Clamp position between minFraction and maxFraction.
              dividerPosition = dividerPosition.clamp(
                widget.minFraction,
                widget.maxFraction,
              );

              // Notify external listener if available.
              if (widget.positionListener != null) {
                widget.positionListener!(dividerPosition);
              }
            });
          },
          onVerticalDragEnd: (_) {
            setState(() {
              _isDragging = false;
            });
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.resizeRow,
            child: SizedBox(
              width: double.infinity,
              height: _dividerHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Display 3 small circles as visual divider grips.
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: SizedBox(
                        width: 10,
                        child: CircleAvatar(
                          backgroundColor: _isDragging
                              ? Colors.redAccent
                              : themeData.textTheme.bodyMedium!.color,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),

        // --- Bottom Resizable Panel ---
        Expanded(
          flex: bottomHeight.round(),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
            child: widget.bottomTab,
          ),
        ),
      ],
    );
  }
}
