import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import 'mark_as_complete_dialog_widget.dart' show MarkAsCompleteDialogWidget;
import 'package:flutter/material.dart';

class MarkAsCompleteDialogModel
    extends FlutterFlowModel<MarkAsCompleteDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel1;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel2;
  // Stores action output result for [Backend Call - API (updateServiceRequestStatus)] action in custom_button widget.
  ApiCallResponse? apiResult2uk;

  @override
  void initState(BuildContext context) {
    customTextfieldModel = createModel(context, () => CustomTextfieldModel());
    customButtonModel1 = createModel(context, () => CustomButtonModel());
    customButtonModel2 = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customTextfieldModel.dispose();
    customButtonModel1.dispose();
    customButtonModel2.dispose();
  }
}
