import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import 'delete_dialog_widget.dart' show DeleteDialogWidget;
import 'package:flutter/material.dart';

class DeleteDialogModel extends FlutterFlowModel<DeleteDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_button component.
  late CustomButtonModel customButtonModel1;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel2;
  // Stores action output result for [Backend Call - API (deleteServiceRequest)] action in custom_button widget.
  ApiCallResponse? apiResultgme;

  @override
  void initState(BuildContext context) {
    customButtonModel1 = createModel(context, () => CustomButtonModel());
    customButtonModel2 = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customButtonModel1.dispose();
    customButtonModel2.dispose();
  }
}
