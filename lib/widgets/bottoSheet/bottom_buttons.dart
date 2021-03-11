import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('No'),
              ),
              color: Color.fromRGBO(0, 0, 0, .08),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Yes, Change',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Color.fromRGBO(66, 38, 171, 1),
            ),
          ),
        ],
      ),
    );
  }
}
