import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'title_with_more_btn.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(title: "Recomended", press: () {}),
        RecomendPlants(),
        TitleWithMoreBtn(
          title: "Featured Plants",
          press: () {},
        ),
        FeaturedPlants(),
        SizedBox(
          height: kDefaultPadding,
        )
      ],
    ));
  }
}
