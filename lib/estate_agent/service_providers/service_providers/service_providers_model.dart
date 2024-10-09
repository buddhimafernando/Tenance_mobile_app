import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/services_tile/services_tile_widget.dart';
import 'service_providers_widget.dart' show ServiceProvidersWidget;
import 'package:flutter/material.dart';

class ServiceProvidersModel extends FlutterFlowModel<ServiceProvidersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for services_tile component.
  late ServicesTileModel servicesTileModel1;
  // Model for services_tile component.
  late ServicesTileModel servicesTileModel2;
  // Model for services_tile component.
  late ServicesTileModel servicesTileModel3;
  // Model for services_tile component.
  late ServicesTileModel servicesTileModel4;
  // Model for services_tile component.
  late ServicesTileModel servicesTileModel5;
  // Model for services_tile component.
  late ServicesTileModel servicesTileModel6;

  @override
  void initState(BuildContext context) {
    servicesTileModel1 = createModel(context, () => ServicesTileModel());
    servicesTileModel2 = createModel(context, () => ServicesTileModel());
    servicesTileModel3 = createModel(context, () => ServicesTileModel());
    servicesTileModel4 = createModel(context, () => ServicesTileModel());
    servicesTileModel5 = createModel(context, () => ServicesTileModel());
    servicesTileModel6 = createModel(context, () => ServicesTileModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    servicesTileModel1.dispose();
    servicesTileModel2.dispose();
    servicesTileModel3.dispose();
    servicesTileModel4.dispose();
    servicesTileModel5.dispose();
    servicesTileModel6.dispose();
  }
}
