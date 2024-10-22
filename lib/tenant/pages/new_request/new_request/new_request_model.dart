import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/date_time_field/date_time_field_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'new_request_widget.dart' show NewRequestWidget;
import 'package:flutter/material.dart';

class NewRequestModel extends FlutterFlowModel<NewRequestWidget> {
  ///  Local state fields for this page.

  List<String> dropDown = ['Hi', 'Hello', 'wanakkam'];
  void addToDropDown(String item) => dropDown.add(item);
  void removeFromDropDown(String item) => dropDown.remove(item);
  void removeAtIndexFromDropDown(int index) => dropDown.removeAt(index);
  void insertAtIndexInDropDown(int index, String item) =>
      dropDown.insert(index, item);
  void updateDropDownAtIndex(int index, Function(String) updateFn) =>
      dropDown[index] = updateFn(dropDown[index]);

  ///  State fields for stateful widgets in this page.

  // Model for property_id.
  late CustomTextfieldModel propertyIdModel;
  // Model for maintenance_type.
  late CustomDropdownModel maintenanceTypeModel;
  // Model for upload_image component.
  late UploadImageModel uploadImageModel;
  // Model for note.
  late CustomTextfieldModel noteModel;
  // Model for availableTime1.
  late DateTimeFieldModel availableTime1Model;
  // Model for availableTime2.
  late DateTimeFieldModel availableTime2Model;
  // Model for availableTime3.
  late DateTimeFieldModel availableTime3Model;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;
  // Stores action output result for [Backend Call - API (createMaintainenanceRequest)] action in custom_button widget.
  ApiCallResponse? apiResultui8;

  @override
  void initState(BuildContext context) {
    propertyIdModel = createModel(context, () => CustomTextfieldModel());
    maintenanceTypeModel = createModel(context, () => CustomDropdownModel());
    uploadImageModel = createModel(context, () => UploadImageModel());
    noteModel = createModel(context, () => CustomTextfieldModel());
    availableTime1Model = createModel(context, () => DateTimeFieldModel());
    availableTime2Model = createModel(context, () => DateTimeFieldModel());
    availableTime3Model = createModel(context, () => DateTimeFieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    propertyIdModel.dispose();
    maintenanceTypeModel.dispose();
    uploadImageModel.dispose();
    noteModel.dispose();
    availableTime1Model.dispose();
    availableTime2Model.dispose();
    availableTime3Model.dispose();
    customButtonModel.dispose();
  }
}
