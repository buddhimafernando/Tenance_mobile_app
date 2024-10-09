import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/cancel_button/cancel_button_widget.dart';
import '/widgets/status_button/status_button_widget.dart';
import 'package:flutter/material.dart';
import 'completed_request_card_model.dart';
export 'completed_request_card_model.dart';

class CompletedRequestCardWidget extends StatefulWidget {
  const CompletedRequestCardWidget({
    super.key,
    String? request,
    String? content,
    required this.name,
  })  : request = request ?? 'request',
        content = content ?? 'content';

  final String request;
  final String content;
  final String? name;

  @override
  State<CompletedRequestCardWidget> createState() =>
      _CompletedRequestCardWidgetState();
}

class _CompletedRequestCardWidgetState
    extends State<CompletedRequestCardWidget> {
  late CompletedRequestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompletedRequestCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
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
                          valueOrDefault<String>(
                            widget.request,
                            'Plumbing Maintenance',
                          ),
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
                            buttonColor: Color(0x5E9446DC),
                            buttonLabel: 'Completed',
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
                          wrapWithModel(
                            model: _model.cancelButtonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CancelButtonWidget(
                              button: 'Re-initiate',
                              fontSize: 14.0,
                              labelColor:
                                  FlutterFlowTheme.of(context).alternate,
                              buttonColor: FlutterFlowTheme.of(context).primary,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              buttonWidth: 110.0,
                              buttonHeight: 40.0,
                              onPressed: () async {},
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0x8046A5DC),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.name,
                                    'name',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
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
