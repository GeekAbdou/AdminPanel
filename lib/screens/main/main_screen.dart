import 'package:adminpanel/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'components/menulist.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashbaordScreen(),
            ),
          ],
        ),
      ),
    );
  }
}