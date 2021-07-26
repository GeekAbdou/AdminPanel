import 'package:adminpanel/models/cloud_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../constants.dart';

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
              Text("My Files", style: TextStyle(fontSize: 20)),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add File"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: defaultPadding,
                      horizontal: defaultPadding * 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          SafeArea(
            child: Column(
              children: [
                GridView.builder(
                  itemCount: demoMyFiles.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: defaultPadding,
                    childAspectRatio: 1.4,
                  ),
                  itemBuilder: (context, index) => CloudCards(
                    info: demoMyFiles[index],
                  ),
                ),
              ],
            ),
          ),
        ],
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
