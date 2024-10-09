import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_appbar/custom_appbar_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import 'inquiry_view_widget.dart' show InquiryViewWidget;
import 'package:flutter/material.dart';

class InquiryViewModel extends FlutterFlowModel<InquiryViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for custom_appbar component.
  late CustomAppbarModel customAppbarModel;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel1;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel2;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel3;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    labelAndContentModel1 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel2 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel3 = createModel(context, () => LabelAndContentModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    labelAndContentModel1.dispose();
    labelAndContentModel2.dispose();
    labelAndContentModel3.dispose();
    customButtonModel.dispose();
  }
}
