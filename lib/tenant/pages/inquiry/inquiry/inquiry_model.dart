import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'inquiry_widget.dart' show InquiryWidget;
import 'package:flutter/material.dart';

class InquiryModel extends FlutterFlowModel<InquiryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for subject.
  late CustomTextfieldModel subjectModel;
  // Model for message.
  late CustomTextfieldModel messageModel;
  // Model for upload_image component.
  late UploadImageModel uploadImageModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;
  // Stores action output result for [Backend Call - API (createInquiry)] action in custom_button widget.
  ApiCallResponse? apiResultsta;

  @override
  void initState(BuildContext context) {
    subjectModel = createModel(context, () => CustomTextfieldModel());
    messageModel = createModel(context, () => CustomTextfieldModel());
    uploadImageModel = createModel(context, () => UploadImageModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    subjectModel.dispose();
    messageModel.dispose();
    uploadImageModel.dispose();
    customButtonModel.dispose();
  }
}
