import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/password_field/password_field_widget.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for password_field component.
  late PasswordFieldModel passwordFieldModel1;
  // Model for password_field component.
  late PasswordFieldModel passwordFieldModel2;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    passwordFieldModel1 = createModel(context, () => PasswordFieldModel());
    passwordFieldModel2 = createModel(context, () => PasswordFieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    passwordFieldModel1.dispose();
    passwordFieldModel2.dispose();
    customButtonModel.dispose();
  }
}
