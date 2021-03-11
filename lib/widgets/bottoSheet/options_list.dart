import 'package:flutter/material.dart';

import '../buttons/circle_switch_btn.dart';

class OptionsList extends StatefulWidget {
  @override
  _OptionsListState createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  bool _isArrived = true;
  bool _isCompleted = false;
  bool _isDelivered = false;

  void _onPressed(bool val, String title) {
    setState(() {
      _isArrived = false;
      _isCompleted = false;
      _isDelivered = false;

      switch (title) {
        case 'Arrived to appointment':
          _isArrived = !_isArrived;
          break;
        case 'Signing Complete':
          _isCompleted = !_isCompleted;
          break;
        case 'Documents Delivered':
          _isDelivered = !_isDelivered;
          break;
      }
    });
  }

  Widget _card(String title, bool val, [String sub]) => Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: sub != null ? Text(sub) : Text(''),
            isThreeLine: true,
            trailing: CircleSwithBtn(title, val, _onPressed),
          ),
          Divider(),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _card(
          'Arrived to appointment',
          _isArrived,
          'Please make sure you are at the signing location',
        ),
        _card('Signing Complete', _isCompleted),
        _card('Documents Delivered', _isDelivered),
      ],
    );
  }
}
