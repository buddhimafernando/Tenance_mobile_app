import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/date_time_field/date_time_field_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'new_request_widget.dart' show NewRequestWidget;
import 'package:flutter/material.dart';

class NewRequestModel extends FlutterFlowModel<NewRequestWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel1;
  // Model for custom_dropdown component.
  late CustomDropdownModel customDropdownModel;
  // Model for upload_image component.
  late UploadImageModel uploadImageModel;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel2;
  // Model for date_time_field component.
  late DateTimeFieldModel dateTimeFieldModel1;
  // Model for date_time_field component.
  late DateTimeFieldModel dateTimeFieldModel2;
  // Model for date_time_field component.
  late DateTimeFieldModel dateTimeFieldModel3;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customTextfieldModel1 = createModel(context, () => CustomTextfieldModel());
    customDropdownModel = createModel(context, () => CustomDropdownModel());
    uploadImageModel = createModel(context, () => UploadImageModel());
    customTextfieldModel2 = createModel(context, () => CustomTextfieldModel());
    dateTimeFieldModel1 = createModel(context, () => DateTimeFieldModel());
    dateTimeFieldModel2 = createModel(context, () => DateTimeFieldModel());
    dateTimeFieldModel3 = createModel(context, () => DateTimeFieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customTextfieldModel1.dispose();
    customDropdownModel.dispose();
    uploadImageModel.dispose();
    customTextfieldModel2.dispose();
    dateTimeFieldModel1.dispose();
    dateTimeFieldModel2.dispose();
    dateTimeFieldModel3.dispose();
    customButtonModel.dispose();
  }
}
