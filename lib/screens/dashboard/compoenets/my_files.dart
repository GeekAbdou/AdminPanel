import 'package:adminpanel/responsive.dart';
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
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        AddFileBar(),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: CloudStoragesDataRow(
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
            crossAxisCount: _size.width < 650 ? 2 : 4,
          ),
          tablet: CloudStoragesDataRow(),
          desktop: CloudStoragesDataRow(
              childAspectRatio: _size.width < 1400 ? 1.1 : 1.4),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
