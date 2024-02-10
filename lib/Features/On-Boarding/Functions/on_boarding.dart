

import 'package:diabestapp/Core/Database/cache/cache_helper.dart';
import 'package:diabestapp/Core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}