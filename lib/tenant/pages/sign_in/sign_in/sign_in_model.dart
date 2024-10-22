import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/password_field/password_field_widget.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel;
  // Model for password_field component.
  late PasswordFieldModel passwordFieldModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;
  // Stores action output result for [Backend Call - API (findTenantDetails)] action in custom_button widget.
  ApiCallResponse? apiResulta8f;

  @override
  void initState(BuildContext context) {
    customTextfieldModel = createModel(context, () => CustomTextfieldModel());
    passwordFieldModel = createModel(context, () => PasswordFieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customTextfieldModel.dispose();
    passwordFieldModel.dispose();
    customButtonModel.dispose();
  }
}
