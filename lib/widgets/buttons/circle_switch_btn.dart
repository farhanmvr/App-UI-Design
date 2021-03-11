import 'package:flutter/material.dart';

class CircleSwithBtn extends StatelessWidget {
  final bool _isActive;
  final String title;
  final Function _onPressed;
  CircleSwithBtn(this.title, this._isActive, this._onPressed);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => _onPressed(_isActive, title),
      color: _isActive ? Theme.of(context).accentColor : Colors.white,
      textColor: Colors.white,
      child: Icon(
        Icons.done,
        size: 20,
      ),
      padding: EdgeInsets.all(8),
      shape: CircleBorder(),
    );
  }
}
