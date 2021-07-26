import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'add_file_row.dart';
import 'cloud_storage_cars.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddFileBar(),
        SizedBox(height: defaultPadding),
        CloudStoragesDataRow(),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
