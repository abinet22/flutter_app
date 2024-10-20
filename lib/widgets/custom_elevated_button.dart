import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final EdgeInsetsGeometry padding;
  final OutlinedBorder shape; // Change from ShapeBorder to OutlinedBorder
  final double elevation;

  const CustomElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue, // Default color
    this.textColor = Colors.white, // Default text color
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ), // Default shape (rounded corners)
    this.elevation = 2.0, // Default elevation
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Use backgroundColor instead of primary
        foregroundColor: textColor, // Use foregroundColor instead of onPrimary
        padding: padding,
        shape: shape, // Use OutlinedBorder here
        elevation: elevation,
      ),
      child: Text(label),
    );
  }
}
