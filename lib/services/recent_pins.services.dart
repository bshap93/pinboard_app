import 'package:hive_flutter/hive_flutter.dart';
import 'package:pinboard_app/models/pin_bookmark.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked.dart';

class RecentPinsService with ReactiveServiceMixin {
  final _pinBookmarks = ReactiveValue<List<PinBookmark>>(
    // empty list has to be passed as no todos are yet created
    Hive.box('pin_bookmarks')
        .get('pin_bookmarks', defaultValue: []).cast<PinBookmark>(),
  );

  List<PinBookmark> get todos => _pinBookmarks.value;

  RecentPinsService() {
    listenToReactiveValues([_pinBookmarks]);
  }

  void _saveToHive() =>
      Hive.box('pin_bookmarks').put('pin_bookmarks', _pinBookmarks.value);
}
