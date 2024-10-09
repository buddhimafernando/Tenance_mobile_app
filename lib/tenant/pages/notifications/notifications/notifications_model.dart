import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/notification_card/notification_card_widget.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for notification_card component.
  late NotificationCardModel notificationCardModel;

  @override
  void initState(BuildContext context) {
    notificationCardModel = createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    notificationCardModel.dispose();
  }
}
