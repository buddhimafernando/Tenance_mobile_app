import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import 'profile_view_widget.dart' show ProfileViewWidget;
import 'package:flutter/material.dart';

class ProfileViewModel extends FlutterFlowModel<ProfileViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for agreement_id.
  late LabelAndContentModel agreementIdModel;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel1;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel2;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel3;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel4;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    agreementIdModel = createModel(context, () => LabelAndContentModel());
    labelAndContentModel1 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel2 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel3 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel4 = createModel(context, () => LabelAndContentModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    agreementIdModel.dispose();
    labelAndContentModel1.dispose();
    labelAndContentModel2.dispose();
    labelAndContentModel3.dispose();
    labelAndContentModel4.dispose();
    customButtonModel.dispose();
  }
}
