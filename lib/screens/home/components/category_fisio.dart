import 'package:flutter/material.dart';
import 'package:app_fisio/models/fisio.dart';
import 'package:app_fisio/constants.dart';

class CategoryFisio extends StatelessWidget {
  const CategoryFisio({
    Key key,
    this.itemIndex,
    this.fisio,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Fisio fisio;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      //color: Colors.greenAccent,
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kPrimaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${fisio.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 150,
                  width: 190,
                  child: Image.asset(
                    fisio.image,
                    //"assets/images/Item_1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 160,
                width: size.width - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        fisio.title,
                        //"Anatomia",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Google',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
