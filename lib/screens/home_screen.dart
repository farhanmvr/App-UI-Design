import 'package:flutter/material.dart';

import './progress_screen.dart';
import './completed_screen.dart';
import '../widgets/homeScreen/top_navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TopNavigation(),
        ),
        body: TabBarView(
          children: <Widget>[
            ProgressScreen(),
            CompletedScreen(),
          ],
        ),
      ),
    );
  }
}
