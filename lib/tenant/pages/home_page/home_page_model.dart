import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/horizontal_carousal/horizontal_carousal_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> pieChartlabels = ['Pending', 'Ongoing', 'Completed', 'Rejected'];
  void addToPieChartlabels(String item) => pieChartlabels.add(item);
  void removeFromPieChartlabels(String item) => pieChartlabels.remove(item);
  void removeAtIndexFromPieChartlabels(int index) =>
      pieChartlabels.removeAt(index);
  void insertAtIndexInPieChartlabels(int index, String item) =>
      pieChartlabels.insert(index, item);
  void updatePieChartlabelsAtIndex(int index, Function(String) updateFn) =>
      pieChartlabels[index] = updateFn(pieChartlabels[index]);

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
