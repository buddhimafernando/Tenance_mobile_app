import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import 'mark_as_incomplete_dialog_widget.dart'
    show MarkAsIncompleteDialogWidget;
import 'package:flutter/material.dart';

class MarkAsIncompleteDialogModel
    extends FlutterFlowModel<MarkAsIncompleteDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel1;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel2;

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
