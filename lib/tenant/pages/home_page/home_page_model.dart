import '/components/pie_chart_label_widget.dart';
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

  List<int> values = [20, 30, 70, 90];
  void addToValues(int item) => values.add(item);
  void removeFromValues(int item) => values.remove(item);
  void removeAtIndexFromValues(int index) => values.removeAt(index);
  void insertAtIndexInValues(int index, int item) => values.insert(index, item);
  void updateValuesAtIndex(int index, Function(int) updateFn) =>
      values[index] = updateFn(values[index]);

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_carousal component.
  late HorizontalCarousalModel horizontalCarousalModel;
  // Model for pieChartLabel component.
  late PieChartLabelModel pieChartLabelModel1;
  // Model for pieChartLabel component.
  late PieChartLabelModel pieChartLabelModel2;
  // Model for pieChartLabel component.
  late PieChartLabelModel pieChartLabelModel3;
  // Model for pieChartLabel component.
  late PieChartLabelModel pieChartLabelModel4;

  @override
  void initState(BuildContext context) {
    horizontalCarousalModel =
        createModel(context, () => HorizontalCarousalModel());
    pieChartLabelModel1 = createModel(context, () => PieChartLabelModel());
    pieChartLabelModel2 = createModel(context, () => PieChartLabelModel());
    pieChartLabelModel3 = createModel(context, () => PieChartLabelModel());
    pieChartLabelModel4 = createModel(context, () => PieChartLabelModel());
  }

  @override
  void dispose() {
    horizontalCarousalModel.dispose();
    pieChartLabelModel1.dispose();
    pieChartLabelModel2.dispose();
    pieChartLabelModel3.dispose();
    pieChartLabelModel4.dispose();
  }
}
