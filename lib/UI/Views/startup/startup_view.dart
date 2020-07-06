import 'package:epic_games_ui/UI/Views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.navigateToHome();
          },
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
