import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/icon_label_button/icon_label_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import '/widgets/skill_chips/skill_chips_widget.dart';
import 'maintenance_provider_profile_widget.dart' show MaintenanceProviderProfileWidget;
import 'package:flutter/material.dart';

class ServiceProviderProfileModel
    extends FlutterFlowModel<MaintenanceProviderProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for skill_chips component.
  late SkillChipsModel skillChipsModel1;
  // Model for skill_chips component.
  late SkillChipsModel skillChipsModel2;
  // Model for skill_chips component.
  late SkillChipsModel skillChipsModel3;
  // Model for icon_label_button component.
  late IconLabelButtonModel iconLabelButtonModel1;
  // Model for icon_label_button component.
  late IconLabelButtonModel iconLabelButtonModel2;
  // Model for icon_label_button component.
  late IconLabelButtonModel iconLabelButtonModel3;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel1;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel2;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel3;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel4;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel5;
  // Model for label_and_content component.
  late LabelAndContentModel labelAndContentModel6;

  @override
  void initState(BuildContext context) {
    skillChipsModel1 = createModel(context, () => SkillChipsModel());
    skillChipsModel2 = createModel(context, () => SkillChipsModel());
    skillChipsModel3 = createModel(context, () => SkillChipsModel());
    iconLabelButtonModel1 = createModel(context, () => IconLabelButtonModel());
    iconLabelButtonModel2 = createModel(context, () => IconLabelButtonModel());
    iconLabelButtonModel3 = createModel(context, () => IconLabelButtonModel());
    labelAndContentModel1 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel2 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel3 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel4 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel5 = createModel(context, () => LabelAndContentModel());
    labelAndContentModel6 = createModel(context, () => LabelAndContentModel());
  }

  @override
  void dispose() {
    skillChipsModel1.dispose();
    skillChipsModel2.dispose();
    skillChipsModel3.dispose();
    iconLabelButtonModel1.dispose();
    iconLabelButtonModel2.dispose();
    iconLabelButtonModel3.dispose();
    labelAndContentModel1.dispose();
    labelAndContentModel2.dispose();
    labelAndContentModel3.dispose();
    labelAndContentModel4.dispose();
    labelAndContentModel5.dispose();
    labelAndContentModel6.dispose();
  }
}