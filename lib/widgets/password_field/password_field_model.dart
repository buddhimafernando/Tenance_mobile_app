import '/flutter_flow/flutter_flow_util.dart';
import 'password_field_widget.dart' show PasswordFieldWidget;
import 'package:flutter/material.dart';

class PasswordFieldModel extends FlutterFlowModel<PasswordFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
