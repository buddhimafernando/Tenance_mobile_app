import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import 'delete_dialog_widget.dart' show DeleteDialogWidget;
import 'package:flutter/material.dart';

class DeleteDialogModel extends FlutterFlowModel<DeleteDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_dropdown component.
  late CustomDropdownModel customDropdownModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel1;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel2;

  @override
  void initState(BuildContext context) {
    customDropdownModel = createModel(context, () => CustomDropdownModel());
    customButtonModel1 = createModel(context, () => CustomButtonModel());
    customButtonModel2 = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customDropdownModel.dispose();
    customButtonModel1.dispose();
    customButtonModel2.dispose();
  }
}
