import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/config/size_config.dart';
import 'package:epic_games_ui/app/locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:screen_utils/screen_utils.dart';

import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: locator<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: GoogleFonts.montserratTextTheme(),
        // fontFamily: 'Lato',
      ),
      initialRoute: Routes.homeView,
      onGenerateRoute: Router().onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Adapt.init(context);

    return Scaffold(
      body: HomeView(),
    );
  }
}
