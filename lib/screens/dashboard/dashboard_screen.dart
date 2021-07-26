import 'package:adminpanel/constants.dart';
import 'package:flutter/material.dart';
import 'compoenets/Header.dart';
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

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Files",
                  style: TextStyle(fontSize: 20)),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add File"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: defaultPadding,
                      horizontal: defaultPadding*1.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
