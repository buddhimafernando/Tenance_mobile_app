import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import 'add_new_provider_widget.dart' show AddNewProviderWidget;
import 'package:flutter/material.dart';

class AddNewProviderModel extends FlutterFlowModel<AddNewProviderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel1;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel2;
  // Model for custom_dropdown component.
  late CustomDropdownModel customDropdownModel;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel3;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel4;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel5;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customTextfieldModel1 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel2 = createModel(context, () => CustomTextfieldModel());
    customDropdownModel = createModel(context, () => CustomDropdownModel());
    customTextfieldModel3 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel4 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel5 = createModel(context, () => CustomTextfieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customTextfieldModel1.dispose();
    customTextfieldModel2.dispose();
    customDropdownModel.dispose();
    customTextfieldModel3.dispose();
    customTextfieldModel4.dispose();
    customTextfieldModel5.dispose();
    customButtonModel.dispose();
  }
}
