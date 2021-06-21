import 'package:app_fisio/constants.dart';
import 'package:app_fisio/screens/description/description_screen.dart';
import 'package:app_fisio/screens/home/components/category_fisio.dart';
import 'package:app_fisio/screens/home/components/header_with_searchbox.dart';
import 'package:flutter/material.dart';
import 'package:app_fisio/models/fisio.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(onChanged: (value) {}),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: fisios.length,
                  itemBuilder: (context, index) => CategoryFisio(
                    itemIndex: index,
                    fisio: fisios[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DescriptionScreen(fisio: fisios[index],),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
          //HeaderWithSearchBox(size: size),
        ],
      ),
    );
  }
}
