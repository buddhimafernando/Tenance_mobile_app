import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/password_field/password_field_widget.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel1;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel2;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel3;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel4;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel5;
  // Model for password_field component.
  late PasswordFieldModel passwordFieldModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customTextfieldModel1 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel2 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel3 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel4 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel5 = createModel(context, () => CustomTextfieldModel());
    passwordFieldModel = createModel(context, () => PasswordFieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customTextfieldModel1.dispose();
    customTextfieldModel2.dispose();
    customTextfieldModel3.dispose();
    customTextfieldModel4.dispose();
    customTextfieldModel5.dispose();
    passwordFieldModel.dispose();
    customButtonModel.dispose();
  }
}
