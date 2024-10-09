import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/pending_request_card/pending_request_card_widget.dart';
import 'rejected_service_requests_widget.dart'
    show RejectedServiceRequestsWidget;
import 'package:flutter/material.dart';

class RejectedServiceRequestsModel
    extends FlutterFlowModel<RejectedServiceRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for pending_request_card component.
  late PendingRequestCardModel pendingRequestCardModel;

  @override
  void initState(BuildContext context) {
    pendingRequestCardModel =
        createModel(context, () => PendingRequestCardModel());
  }

  @override
  void dispose() {
    pendingRequestCardModel.dispose();
  }
}
