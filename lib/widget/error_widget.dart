import 'package:flutter/material.dart';

class ErrorWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Failed to get response from the server",
      style: TextStyle(
        color: Colors.red,
        fontSize: 22.0,
      ),
    );
  }
}
