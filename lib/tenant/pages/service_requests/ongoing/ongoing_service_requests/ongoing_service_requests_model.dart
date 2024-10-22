import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/ongoing_request_card/ongoing_request_card_widget.dart';
import 'ongoing_service_requests_widget.dart' show OngoingServiceRequestsWidget;
import 'package:flutter/material.dart';

class OngoingServiceRequestsModel
    extends FlutterFlowModel<OngoingServiceRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for ongoing_request_card dynamic component.
  late FlutterFlowDynamicModels<OngoingRequestCardModel>
      ongoingRequestCardModels;

  @override
  void initState(BuildContext context) {
    ongoingRequestCardModels =
        FlutterFlowDynamicModels(() => OngoingRequestCardModel());
  }

  @override
  void dispose() {
    ongoingRequestCardModels.dispose();
  }
}
