import 'package:flutter/material.dart';
import 'package:pinboard_app/ui/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
