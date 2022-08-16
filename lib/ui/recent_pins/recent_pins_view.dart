import 'package:flutter/material.dart';
import 'package:pinboard_app/ui/recent_pins/recent_pins_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RecentPinsView extends StatelessWidget {
  const RecentPinsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RecentPinsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => RecentPinsViewModel(),
    );
  }
}
