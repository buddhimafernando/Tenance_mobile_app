import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/available_time_chip/available_time_chip_widget.dart';
import '/widgets/status_button/status_button_widget.dart';
import 'ongoing_request_card_widget.dart' show OngoingRequestCardWidget;
import 'package:flutter/material.dart';

class OngoingRequestCardModel
    extends FlutterFlowModel<OngoingRequestCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for status_button component.
  late StatusButtonModel statusButtonModel;
  // Model for available_time_chip component.
  late AvailableTimeChipModel availableTimeChipModel;

  @override
  void initState(BuildContext context) {
    statusButtonModel = createModel(context, () => StatusButtonModel());
    availableTimeChipModel =
        createModel(context, () => AvailableTimeChipModel());
  }

  @override
  void dispose() {
    statusButtonModel.dispose();
    availableTimeChipModel.dispose();
  }
}
