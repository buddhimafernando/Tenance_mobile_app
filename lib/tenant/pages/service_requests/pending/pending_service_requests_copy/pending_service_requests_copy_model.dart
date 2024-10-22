import '/flutter_flow/flutter_flow_util.dart';
import 'pending_service_requests_copy_widget.dart'
    show PendingServiceRequestsCopyWidget;
import 'package:flutter/material.dart';

class PendingServiceRequestsCopyModel
    extends FlutterFlowModel<PendingServiceRequestsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
