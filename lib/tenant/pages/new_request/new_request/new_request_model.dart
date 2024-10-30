import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/date_time_field/date_time_field_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'new_request_widget.dart' show NewRequestWidget;
import 'package:flutter/material.dart';

class NewRequestModel extends FlutterFlowModel<NewRequestWidget> {
  ///  Local state fields for this page.

  List<String> dropDown = [
    'Plumbing repairs',
    'Electrical repairs',
    'Painting'
  ];
  void addToDropDown(String item) => dropDown.add(item);
  void removeFromDropDown(String item) => dropDown.remove(item);
  void removeAtIndexFromDropDown(int index) => dropDown.removeAt(index);
  void insertAtIndexInDropDown(int index, String item) =>
      dropDown.insert(index, item);
  void updateDropDownAtIndex(int index, Function(String) updateFn) =>
      dropDown[index] = updateFn(dropDown[index]);

  String? propertyId = '';

  String? ownerId = '';

  String? agentId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for properties widget.
  FormFieldController<String>? propertiesValueController;
  // Model for maintenance_type.
  late CustomDropdownModel maintenanceTypeModel;
  // Model for upload_image component.
  late UploadImageModel uploadImageModel;
  // Model for note.
  late CustomTextfieldModel noteModel;
  // Model for availableTime1.
  late DateTimeFieldModel availableTime1Model1;
  // Model for availableTime1.
  late DateTimeFieldModel availableTime1Model2;
  // Model for availableTime1.
  late DateTimeFieldModel availableTime1Model3;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;
  // Stores action output result for [Backend Call - API (createMaintainenanceRequest)] action in custom_button widget.
  ApiCallResponse? apiResultui8;

  @override
  void initState(BuildContext context) {
    maintenanceTypeModel = createModel(context, () => CustomDropdownModel());
    uploadImageModel = createModel(context, () => UploadImageModel());
    noteModel = createModel(context, () => CustomTextfieldModel());
    availableTime1Model1 = createModel(context, () => DateTimeFieldModel());
    availableTime1Model2 = createModel(context, () => DateTimeFieldModel());
    availableTime1Model3 = createModel(context, () => DateTimeFieldModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    maintenanceTypeModel.dispose();
    uploadImageModel.dispose();
    noteModel.dispose();
    availableTime1Model1.dispose();
    availableTime1Model2.dispose();
    availableTime1Model3.dispose();
    customButtonModel.dispose();
  }

  /// Additional helper methods.
  String? get propertiesValue => propertiesValueController?.value;
}
