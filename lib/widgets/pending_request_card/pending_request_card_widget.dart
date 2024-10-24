import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/cancel_button/cancel_button_widget.dart';
import '/widgets/delete_dialog/delete_dialog_widget.dart';
import '/widgets/status_button/status_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pending_request_card_model.dart';
export 'pending_request_card_model.dart';

class PendingRequestCardWidget extends StatefulWidget {
  const PendingRequestCardWidget({
    super.key,
    String? request,
    String? content,
    required this.navigateTo,
    required this.popUp,
  })  : request = request ?? 'request',
        content = content ?? 'content';

  final String request;
  final String content;
  final Future Function()? navigateTo;
  final Future Function()? popUp;

  @override
  State<PendingRequestCardWidget> createState() =>
      _PendingRequestCardWidgetState();
}

class _PendingRequestCardWidgetState extends State<PendingRequestCardWidget> {
  late PendingRequestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingRequestCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.navigateTo?.call();
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.request,
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                        ),
                        wrapWithModel(
                          model: _model.statusButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const StatusButtonWidget(
                            buttonColor: Color(0x5E46A5DC),
                            buttonLabel: 'Pending approval',
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        widget.content,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) => wrapWithModel(
                              model: _model.cancelButtonModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CancelButtonWidget(
                                button: 'Cancel',
                                fontSize: 14.0,
                                labelColor:
                                    FlutterFlowTheme.of(context).alternate,
                                buttonWidth: 110.0,
                                buttonHeight: 40.0,
                                onPressed: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: const DeleteDialogWidget(
                                          serviceRequestId: '',
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).secondary,
                                borderRadius: 8.0,
                                buttonSize: 30.0,
                                icon: FaIcon(
                                  FontAwesomeIcons.solidEdit,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 15.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.navigateTo?.call();
                        },
                        child: Text(
                          'View request',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
