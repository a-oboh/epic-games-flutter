import 'package:auto_route/auto_route_annotations.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/Views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupView;

  HomeView homeView;
}
