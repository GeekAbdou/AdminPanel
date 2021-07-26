import 'package:adminpanel/controllers/MenuController.dart';
import 'package:adminpanel/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../../responsive.dart';
import 'components/menulist.dart';
import 'package:provider/provider.dart';
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
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
