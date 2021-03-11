import 'package:flutter/material.dart';

class TopNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TabBar(
              tabs: [
                Tab(
                    child: Text(
                  'In Progress',
                  style: TextStyle(color: Colors.black),
                )),
                Tab(
                    child: Text(
                  'Completed',
                  style: TextStyle(color: Colors.black),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
