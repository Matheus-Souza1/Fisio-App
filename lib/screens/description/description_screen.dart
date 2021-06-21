import 'package:app_fisio/constants.dart';
import 'package:app_fisio/models/fisio.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class DescriptionScreen extends StatelessWidget {
  final Fisio fisio;

  const DescriptionScreen({Key key, this.fisio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 4,
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Hero(
              tag: '${fisio.id}',
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: size.width * 0.6,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    fisio.image,
                    height: size.width * 0.3,
                    width: size.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
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
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
