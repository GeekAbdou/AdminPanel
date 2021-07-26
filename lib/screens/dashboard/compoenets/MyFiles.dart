import 'package:flutter/material.dart';

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
