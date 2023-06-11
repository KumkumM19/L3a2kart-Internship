import 'package:flutter/material.dart';
import 'package:internship_test/constants/colors.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: green1,
      activeTrackColor: grey3,
      value: _isToggled,
      onChanged: (bool value) {
        setState(() {
          _isToggled = value;
        });
      },
    );
  }
}
