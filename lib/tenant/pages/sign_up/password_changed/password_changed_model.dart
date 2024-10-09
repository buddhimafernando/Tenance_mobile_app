import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import 'password_changed_widget.dart' show PasswordChangedWidget;
import 'package:flutter/material.dart';

class PasswordChangedModel extends FlutterFlowModel<PasswordChangedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customButtonModel.dispose();
  }
}
