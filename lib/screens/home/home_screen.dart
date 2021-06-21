import 'package:app_fisio/constants.dart';
import 'package:app_fisio/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("APPrende Fisio"),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        )
      ],
    );
  }
}
