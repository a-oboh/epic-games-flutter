// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:epic_games_ui/services/third_party_services_module.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final name = _$Name();
  g.registerLazySingleton<DialogService>(() => name.dialogService);
  g.registerLazySingleton<NavigationService>(() => name.navigationService);
}

class _$Name extends Name {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
