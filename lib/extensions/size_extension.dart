import 'package:epic_games_ui/UI/config/size_config.dart';

extension SizeExtension on num {
  num get height => SizeConfig.height(this.toDouble());

  num get width => SizeConfig.width(this.toDouble());

  num get text => SizeConfig.textSize(this.toDouble());
}
