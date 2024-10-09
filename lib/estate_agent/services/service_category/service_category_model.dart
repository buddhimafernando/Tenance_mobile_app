import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/services_tile/services_tile_widget.dart';
import 'service_category_widget.dart' show ServiceCategoryWidget;
import 'package:flutter/material.dart';

class ServiceCategoryModel extends FlutterFlowModel<ServiceCategoryWidget> {
  ///  State fields for stateful widgets in this page.

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
    servicesTileModel1.dispose();
    servicesTileModel2.dispose();
    servicesTileModel3.dispose();
    servicesTileModel4.dispose();
    servicesTileModel5.dispose();
    servicesTileModel6.dispose();
  }
}
