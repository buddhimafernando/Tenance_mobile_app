import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'inquiry_widget.dart' show InquiryWidget;
import 'package:flutter/material.dart';

class InquiryModel extends FlutterFlowModel<InquiryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel1;
  // Model for custom_textfield component.
  late CustomTextfieldModel customTextfieldModel2;
  // Model for upload_image component.
  late UploadImageModel uploadImageModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customTextfieldModel1 = createModel(context, () => CustomTextfieldModel());
    customTextfieldModel2 = createModel(context, () => CustomTextfieldModel());
    uploadImageModel = createModel(context, () => UploadImageModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customTextfieldModel1.dispose();
    customTextfieldModel2.dispose();
    uploadImageModel.dispose();
    customButtonModel.dispose();
  }
}
