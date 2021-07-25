import 'package:adminpanel/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashbaordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(child: SearchField()),
                ProfileMenu()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding / 2),
            margin: EdgeInsets.only(left: defaultPadding / 2),
            decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.white24)),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profile_pic.png",
                  height: 38,
                ),
                Padding(
                  child: Text("Abdelrhaman"),
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      filled: true,
      fillColor: secondaryColor,
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      suffixIcon: InkWell(
        child: Container(
          padding: EdgeInsets.all(defaultPadding * .75),
          margin: EdgeInsets.all(defaultPadding / 4),
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: SvgPicture.asset("assets/icons/Search.svg"),
        ),
      ),
    ));
  }
}
