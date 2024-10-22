import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/available_time_chip/available_time_chip_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import 'completed_request_widget.dart' show CompletedRequestWidget;
import 'package:flutter/material.dart';

class CompletedRequestModel extends FlutterFlowModel<CompletedRequestWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel1;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel2;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel3;
  // Model for available_time_chip component.
  late AvailableTimeChipModel availableTimeChipModel1;
  // Model for available_time_chip component.
  late AvailableTimeChipModel availableTimeChipModel2;
  // Model for available_time_chip component.
  late AvailableTimeChipModel availableTimeChipModel3;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    labelAndContentModel1 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel2 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel3 = createModel(context, () => LabelAndContentModel());
    availableTimeChipModel1 =
        createModel(context, () => AvailableTimeChipModel());
    availableTimeChipModel2 =
        createModel(context, () => AvailableTimeChipModel());
    availableTimeChipModel3 =
        createModel(context, () => AvailableTimeChipModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    labelAndContentModel1.dispose();
    labelAndContentModel2.dispose();
    labelAndContentModel3.dispose();
    availableTimeChipModel1.dispose();
    availableTimeChipModel2.dispose();
    availableTimeChipModel3.dispose();
    customButtonModel.dispose();
  }
}
