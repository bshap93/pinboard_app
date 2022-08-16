import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../app/locator.dart';
import '../../models/pin_bookmark.dart';
import '../../services/recent_pins.services.dart';

class RecentPinsViewModel extends BaseViewModel {
  final _recentPinsService = locator<RecentPinsService>();

  List<PinBookmark> get pinBookmarks => _recentPinsService.pinBookmarks;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_recentPinsService];
}
