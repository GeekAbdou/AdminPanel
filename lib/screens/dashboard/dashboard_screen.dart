import 'package:adminpanel/constants.dart';
import 'package:adminpanel/responsive.dart';
import 'package:flutter/material.dart';
import 'compoenets/header.dart';
import 'compoenets/my_files.dart';
import 'compoenets/recent_files.dart';
import 'compoenets/storage_details_sidebar.dart';

class DashbaordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            Padding(padding: EdgeInsets.all(defaultPadding)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Column(
                      children: [
                        MyFiles(),
                        RecentFiles(),
                        if (Responsive.isMobile(context)) SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) StorageDetails(),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
