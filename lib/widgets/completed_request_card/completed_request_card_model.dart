import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/cancel_button/cancel_button_widget.dart';
import '/widgets/status_button/status_button_widget.dart';
import 'completed_request_card_widget.dart' show CompletedRequestCardWidget;
import 'package:flutter/material.dart';

class CompletedRequestCardModel
    extends FlutterFlowModel<CompletedRequestCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for status_button component.
  late StatusButtonModel statusButtonModel;
  // Model for cancel_button component.
  late CancelButtonModel cancelButtonModel;

  @override
  void initState(BuildContext context) {
    statusButtonModel = createModel(context, () => StatusButtonModel());
    cancelButtonModel = createModel(context, () => CancelButtonModel());
  }

  @override
  void dispose() {
    statusButtonModel.dispose();
    cancelButtonModel.dispose();
  }
}
