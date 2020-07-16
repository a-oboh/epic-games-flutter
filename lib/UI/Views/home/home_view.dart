import 'dart:ui';

import 'package:epic_games_ui/UI/config/size_config.dart';
import 'package:epic_games_ui/UI/shared/margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:screen_utils/screen_utils.dart';
import 'package:stacked/stacked.dart';
import 'package:epic_games_ui/extensions/size_extension.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Adapt.init(context);

    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            height: Adapt.screenHeight,
            width: Adapt.screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/landscape.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildLeft(model),
                    buildRight(context, model),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget buildRight(BuildContext context, HomeViewModel model) {
    var textTheme = Theme.of(context).textTheme;

    return Material(
      color: Colors.transparent,
      textStyle: TextStyle(
        color: Colors.grey[600],
        fontFamily: 'WorkSans',
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CupertinoScrollbar(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favorite Games',
                      style: textTheme.headline6.copyWith(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[900],
                      ),
                    ),
                    Ymargin(10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 110,
                            child: Card(
                              semanticContainer: false,
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/images/fortnite.jpg',
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              // margin: EdgeInsets.all(10),
                            ),
                          ),
                          Xmargin(6),
                          SizedBox(
                            height: 150,
                            width: 110,
                            child: Card(
                              semanticContainer: false,
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/images/corruption.jpg',
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              // margin: EdgeInsets.all(10),
                            ),
                          ),
                          Xmargin(6),
                          SizedBox(
                            height: 150,
                            width: 110,
                            child: Card(
                              semanticContainer: false,
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/images/overpass.jpg',
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              // margin: EdgeInsets.all(10),
                            ),
                          ),
                          Xmargin(6),
                          SizedBox(
                            height: 150,
                            width: 110,
                            child: Card(
                              semanticContainer: false,
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/images/maneater.jpg',
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              // margin: EdgeInsets.all(10),
                            ),
                          ),
                          Xmargin(6),
                          SizedBox(
                            height: 150,
                            width: 110,
                            child: Card(
                              color: Colors.blueAccent[400],
                              semanticContainer: false,
                              clipBehavior: Clip.antiAlias,
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              // margin: EdgeInsets.all(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Ymargin(25),
                    Row(
                      children: [
                        Text(
                          'Popular Games',
                          style: textTheme.headline6.copyWith(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[900],
                          ),
                        ),
                        Xmargin(390),
                        Icon(
                          FontAwesome.long_arrow_right,
                          color: Colors.grey[600],
                          size: 19,
                        ),
                      ],
                    ),
                    Ymargin(10),
                    SizedBox(
                      height: 270,
                      width: 567,
                      child: Card(
                        semanticContainer: false,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        elevation: 0,
                        child: Row(
                          children: [
                            Container(
                              width: 320,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/outer_worlds.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.0,
                                vertical: 25,
                              ),
                              child: Container(
                                height: 180,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              Icons.chevron_left,
                                              color: Colors.grey[800],
                                              size: 17,
                                            ),
                                            onTap: () {},
                                          ),
                                          Xmargin(12),
                                          InkWell(
                                            child: Icon(
                                              Icons.chevron_right,
                                              color: Colors.grey[800],
                                              size: 17,
                                            ),
                                            onTap: () {},
                                          ),
                                          Xmargin(100),
                                          Row(
                                            children: [
                                              Icon(
                                                FontAwesome.dot_circle_o,
                                                color: Colors.grey[800],
                                                size: 12,
                                              ),
                                              Xmargin(3),
                                              Icon(
                                                Octicons.primitive_dot,
                                                color: Colors.grey,
                                                size: 8,
                                              ),
                                              Xmargin(3),
                                              Icon(
                                                Octicons.primitive_dot,
                                                color: Colors.grey,
                                                size: 8,
                                              ),
                                              Xmargin(3),
                                              Icon(
                                                Octicons.primitive_dot,
                                                color: Colors.grey,
                                                size: 8,
                                              ),
                                              Xmargin(3),
                                              Icon(
                                                Octicons.primitive_dot,
                                                color: Colors.grey,
                                                size: 8,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Ymargin(20),
                                      Text(
                                        'The Outer Worlds',
                                        style: textTheme.subtitle1.copyWith(
                                          fontFamily: 'WorkSans',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                      Ymargin(8),
                                      SizedBox(
                                        width: 185,
                                        child: Text(
                                          'The Outer Worlds is a new Single player first-person sci-fi RPG from Obsidian Entertainment and Private Division.',
                                          style: textTheme.caption.copyWith(
                                            color: Colors.grey,
                                            fontFamily: 'WorkSans',
                                          ),
                                        ),
                                      ),
                                      Ymargin(14),
                                      Container(
                                        height: 27,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent[400],
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Up to -25%',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Ymargin(25),
                    Row(
                      children: [
                        Text(
                          'News',
                          style: textTheme.headline6.copyWith(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[900],
                          ),
                        ),
                        Xmargin(455),
                        Row(
                          children: [
                            Icon(
                              FontAwesome.th_large,
                              color: Colors.grey[600],
                              size: 16,
                            ),
                            Xmargin(13),
                            Icon(
                              Icons.format_list_bulleted,
                              color: Colors.grey[600],
                              size: 19,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Ymargin(10),
                    buildNewsCard(context),
                  ],
                ),
              ),
            ),
          ),
          // Xmargin(5.width),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 33,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 32,
            ),
            height: Adapt.screenHeight,
            width: 342,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(13),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recently Played',
                        style: textTheme.subtitle1.copyWith(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                      Xmargin(128),
                      Icon(
                        Icons.settings,
                        color: Colors.grey[600],
                        size: 19,
                      ),
                    ],
                  ),
                  Ymargin(20),
                  Container(
                    height: 360,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/the_cycle.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  Ymargin(18),
                  Row(
                    children: [
                      Text(
                        'The Cycle',
                        style: textTheme.subtitle1.copyWith(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                      Xmargin(163),
                      Text(
                        '43%',
                        style: textTheme.subtitle2.copyWith(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                  Ymargin(14),
                  LinearPercentIndicator(
                    width: 270,
                    lineHeight: 7.0,
                    percent: 0.43,
                    backgroundColor: Colors.grey[350],
                    progressColor: Colors.blueAccent[400],
                  ),
                  Ymargin(20),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6,
                      bottom: 20,
                    ),
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[400],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          'Play',
                          style: textTheme.subtitle1.copyWith(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6,
                      bottom: 12,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesome.clock_o,
                          color: Colors.grey[600],
                          size: 17,
                        ),
                        Xmargin(10),
                        Text(
                          "You've played 48 hours",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6,
                      bottom: 20,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesome.calendar_o,
                          color: Colors.grey[600],
                          size: 15,
                        ),
                        Xmargin(10),
                        Text(
                          "Last played 06.07.2020",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Achievements',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Ymargin(10),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/cycle_1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Xmargin(8),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/cycle_2.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Xmargin(8),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/cycle_3.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Xmargin(8),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/cycle_4.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Xmargin(8),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/cycle_5.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey[800].withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    '+58',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Ymargin(20),
                  Text(
                    'Screenshots',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Ymargin(10),
                  Container(
                    height: 200,
                    width: 300,
                    child: GridView.count(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      crossAxisCount: 3,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/cycle_screen_1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/cycle_2.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/cycle_5.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/cycle_screen_2.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/cycle_3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey[800].withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '+12',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNewsCard(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Container(
          height: 340,
          width: 567,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/harley_quinn_2.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        Positioned(
          height: 170,
          width: 567,
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(11),
              bottomRight: Radius.circular(11),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 16,
                sigmaY: 16,
              ),
              child: Container(
                color: Colors.grey[600].withOpacity(0.5),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 26,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HARLEY QUINN ARRIVES IN FORTNITE',
                  style: textTheme.subtitle1.copyWith(
                    color: Colors.white,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Ymargin(4),
                SizedBox(
                  width: 500,
                  child: Text(
                    'The Item Shop features the Harley Quinn Bundle, which includes the Harley Quinn Outfit and Harley Hitter and Punchline Pickaxes. If you’re up for hijinx, Harley arrives with new Challenges that will transform her from Lil Monster XoXo Harley to Always Fantabulous Harley. ',
                    style: textTheme.caption.copyWith(
                      color: Colors.white,
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLeft(HomeViewModel model) {
    return Material(
      textStyle: TextStyle(
        color: Colors.white70,
        fontFamily: 'Lato',
      ),
      child: Container(
        width: 21.width,
        height: 100.height,
        decoration: BoxDecoration(
          color: Colors.blueAccent[400],
        ),
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 4.height,
                ),
                CupertinoScrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.4.width,
                            right: 1.3.width,
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/bert_image.jpg'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DART VADER',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: Text(
                                '128,564\$',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Ymargin(3.3.height),
                Center(
                  child: SizedBox(
                    width: 15.width,
                    height: 5.height,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 1.3.width,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(),
                        filled: true,
                        fillColor: Color.fromRGBO(0, 0, 0, 0.2),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 1.2.width,
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 1.5.width,
                          ),
                        ),
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 3.width),
                      ),
                    ),
                  ),
                ),
                Ymargin(3.4.height),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.1.width,
                    bottom: 2.5.height,
                  ),
                  child: Text(
                    'EPIC GAMES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3.width,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.width),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => model.changeFirstIndex(1),
                        child: iconList1(
                          iconData: Icons.home,
                          title: 'Home',
                          active: model.firstIndex == 1,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(2),
                        child: iconList1(
                          iconData: Icons.store,
                          title: 'Store',
                          active: model.firstIndex == 2,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(3),
                        child: iconList1(
                          iconData: FontAwesome.th_large,
                          title: 'Library',
                          active: model.firstIndex == 3,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(4),
                        child: iconList1(
                          iconData: Icons.group,
                          title: 'Community',
                          active: model.firstIndex == 4,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(5),
                        child: iconList1(
                          iconData: Icons.settings,
                          title: 'Settings',
                          active: model.firstIndex == 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Ymargin(3.2.height),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.1.width,
                    bottom: 2.5.height,
                  ),
                  child: Text(
                    'PLAYER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3.width,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.width),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => model.changeSecondIndex(1),
                        child: iconList2(
                          iconData: Icons.person,
                          title: 'Profile',
                          active: model.secondIndex == 1,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeSecondIndex(2),
                        child: iconList2(
                          iconData: Icons.adjust,
                          title: 'Activity',
                          active: model.secondIndex == 2,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeSecondIndex(3),
                        child: iconList2(
                          iconData: Icons.chat_bubble,
                          title: 'Friends',
                          active: model.secondIndex == 3,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeSecondIndex(4),
                        child: iconList2(
                          iconData: FontAwesome.cloud_download,
                          title: 'Downloads',
                          active: model.secondIndex == 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Ymargin(8.height),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.1.width,
                    bottom: 2.3.height,
                  ),
                  child: Text(
                    'MESSAGES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3.width,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.1.width),
                  child: CupertinoScrollbar(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/timi.jpg'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Xmargin(8),
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/bolu.jpg'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Xmargin(8),
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/rinz.jpg'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Xmargin(8),
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/llama.png'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget iconList1({
    String title,
    IconData iconData,
    bool active = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.8.height),
      child: AnimatedOpacity(
        opacity: active ? 1 : 0.5,
        duration: Duration(milliseconds: 300),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 1.4.width,
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.4.width),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 1.3.width,
                ),
              ),
            ),
            Padding(
              padding: title.length > 8
                  ? EdgeInsets.only(left: 4.5.width)
                  : EdgeInsets.only(left: 8.width),
              child: active
                  ? Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 1.5.width,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconList2({
    String title,
    IconData iconData,
    bool active = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.9.height),
      child: AnimatedOpacity(
        opacity: active ? 1 : 0.5,
        duration: Duration(milliseconds: 300),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 1.4.width,
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.4.width),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 1.3.width,
                ),
              ),
            ),
            Padding(
              padding: title.length > 8
                  ? EdgeInsets.only(left: 4.5.width)
                  : EdgeInsets.only(left: 8.2.width),
              child: active
                  ? Icon(
                      Octicons.primitive_dot,
                      color: Colors.white,
                      size: 1.2.width,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
