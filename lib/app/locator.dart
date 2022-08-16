import 'package:get_it/get_it.dart';

import '../services/recent_pins.services.dart';

final locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => RecentPinsService());
}
