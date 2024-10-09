import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/horizontal_carousal/horizontal_carousal_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for horizontal_carousal component.
  late HorizontalCarousalModel horizontalCarousalModel;

  @override
  void initState(BuildContext context) {
    horizontalCarousalModel =
        createModel(context, () => HorizontalCarousalModel());
  }

  @override
  void dispose() {
    horizontalCarousalModel.dispose();
  }
}
