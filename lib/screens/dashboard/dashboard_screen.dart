import 'package:adminpanel/constants.dart';
import 'package:flutter/material.dart';
import 'compoenets/header.dart';
import 'compoenets/my_files.dart';
import 'compoenets/storage_details.dart';

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
                MyFiles(),
                SizedBox(
                  width: defaultPadding
                ),
                StorageDetails(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
