import 'package:adminpanel/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'chart.dart';
class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Storage Details",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Chart(),
            SizedBox(
              height: defaultPadding,
            ),
            StorageTiles()
          ],
        ),
      ),
    );
  }
}

class StorageTiles extends StatelessWidget {
  const StorageTiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StorageCardInfo(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents",
            filesCount: "1521 Files",
            filesSize: "5.3GB",
          ),
          SizedBox(
            height: 10,
          ),
          StorageCardInfo(
            svgSrc: "assets/icons/media.svg",
            title: "Media",
            filesCount: "21 Files",
            filesSize: "15.3GB",
          ),
          SizedBox(
            height: 10,
          ),
          StorageCardInfo(
            svgSrc: "assets/icons/folder.svg",
            title: "Documents",
            filesCount: "11 Files",
            filesSize: "7.3GB",
          ),
          SizedBox(
            height: 10,
          ),
          StorageCardInfo(
            svgSrc: "assets/icons/unknown.svg",
            title: "unknown",
            filesCount: "151 Files",
            filesSize: "1.3GB",
          ),
        ],
      ),
    );
  }
}

class StorageCardInfo extends StatelessWidget {
  const StorageCardInfo({
    Key key,
    @required this.svgSrc,
    @required this.title,
    @required this.filesCount,
    @required this.filesSize,
  }) : super(key: key);

  final String svgSrc, title, filesCount, filesSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding * .5),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(.15)),
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    filesCount,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(filesSize),
        ],
      ),
    );
  }
}
