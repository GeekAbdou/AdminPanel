import 'package:adminpanel/models/cloud_files.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CloudStoragesDataRow extends StatelessWidget {
  const CloudStoragesDataRow({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio  = 1,
  }) : super(key: key);
  final int crossAxisCount ;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: demoMyFiles.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), //to not make grid scrollable 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => CloudCards(
        info: demoMyFiles[index],
      ),
    );
  }
}

class CloudCards extends StatelessWidget {
  const CloudCards({
    Key key,
    @required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(.1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(info.svgSrc),
                padding: EdgeInsets.all(defaultPadding * .5),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                  color: Colors.white30),
            ],
          ),
          Text(
            info.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          Row(
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  lineHeight: 10.0,
                  percent: info.percentage / 100,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: info.color.withOpacity(.1),
                  progressColor: info.color,
                  animation: true,
                  animationDuration: 1000,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                info.numOfFiles.toString(),
              ),
              Text(
                info.totalStorage.toString(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
