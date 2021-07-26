import 'dart:html';

import 'package:adminpanel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){}//context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileMenu()
      ],
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
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
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
