import 'package:app_fisio/constants.dart';
import 'package:app_fisio/models/fisio.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Body extends StatelessWidget {
  final Fisio fisio;

  const Body({Key key, this.fisio}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Stack(
            children: <Widget>[
             Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 4,
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: size.width * 0.6,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                ),
                Image.asset(
                  "assets/images/fisi.png",
                  height: size.width * 0.3,
                  width: size.width * 0.3,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SlidingSheet(
            elevation: 0,
            cornerRadius: 16,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.7, 1.0],
              positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            builder: (context, state) {
              return Container(
                height: MediaQuery.of(context).size.height,
              );
            },
          ),
            ],
          ),
        )
      ],
    );
  }
}
