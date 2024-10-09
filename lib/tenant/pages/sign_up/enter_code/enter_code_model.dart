import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import 'enter_code_widget.dart' show EnterCodeWidget;
import 'package:flutter/material.dart';

class EnterCodeModel extends FlutterFlowModel<EnterCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
    customButtonModel.dispose();
  }
}
