import 'package:hive_flutter/hive_flutter.dart';

import 'pin_bookmark.dart';

class TodoAdapter extends TypeAdapter<PinBookMarkRaw> {
  @override
  final int typeId = 1;

  @override
  PinBookMarkRaw read(BinaryReader reader) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  void write(BinaryWriter writer, PinBookMarkRaw obj) {
    // TODO: implement write
  }
}
