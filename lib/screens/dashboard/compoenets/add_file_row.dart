import 'package:flutter/material.dart';

import '../../../constants.dart';

class AddFileBar extends StatelessWidget {
  const AddFileBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Files", style: TextStyle(fontSize: 20)),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Add File"),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding * 1.5),
          ),
        ),
      ],
    );
  }
}
