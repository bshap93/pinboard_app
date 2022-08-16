// <post href="https://docs.flutter.dev/reference/tutorials" time="2022-08-16T06:09:40Z" description="Tutorials" extended="" tag="" hash="55f49dd75c3770acc529ff67cb4408ce"    />

class PinBookMarkRaw {
  String href;
  String time;
  String description;
  String extended;
  String tag;
  String hashId;

  PinBookMarkRaw(
    this.href, 
    this.time, 
    this.description, 
    this.extended, 
    this.tag, 
    this.hashId);
}

class PinBookmark {
  final String hashId;
  String description;
  List<Tag> tags;
  String linkURL;
  String extended;
  PinboardDate dateObject;

  PinBookmark({
    required this.hashId,
    required this.dateObject,
    required this.tags,
    this.description = '',
    this.linkURL = '',
    
    this.extended = '',
  })
}

class Tag {
  final String tagName;

  Tag(this.tagName);

}

class PinboardDate {
  late String dateString;
  DateTime? dateTime;

  PinboardDate(_dateString) {
    this.dateString = _dateString;

    // TODO implement dateObject
  }

}
