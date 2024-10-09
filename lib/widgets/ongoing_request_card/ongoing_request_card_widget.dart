import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/available_time_chip/available_time_chip_widget.dart';
import '/widgets/cancel_button/cancel_button_widget.dart';
import '/widgets/status_button/status_button_widget.dart';
import 'package:flutter/material.dart';
import 'ongoing_request_card_model.dart';
export 'ongoing_request_card_model.dart';

class OngoingRequestCardWidget extends StatefulWidget {
  const OngoingRequestCardWidget({
    super.key,
    String? request,
    String? content,
  })  : request = request ?? 'request',
        content = content ?? 'content';

  final String request;
  final String content;

  @override
  State<OngoingRequestCardWidget> createState() =>
      _OngoingRequestCardWidgetState();
}

class _OngoingRequestCardWidgetState extends State<OngoingRequestCardWidget> {
  late OngoingRequestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OngoingRequestCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed('ongoing_request');
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
                            buttonColor: Color(0x5EDCB146),
                            buttonLabel: 'Ongoing stage',
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            wrapWithModel(
                              model: _model.cancelButtonModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: CancelButtonWidget(
                                button: 'Incomplete',
                                fontSize: 14.0,
                                labelColor:
                                    FlutterFlowTheme.of(context).alternate,
                                buttonWidth: 110.0,
                                buttonHeight: 40.0,
                                onPressed: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cancelButtonModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: CancelButtonWidget(
                                button: 'Complete',
                                fontSize: 14.0,
                                labelColor:
                                    FlutterFlowTheme.of(context).alternate,
                                buttonColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                buttonWidth: 110.0,
                                buttonHeight: 40.0,
                                onPressed: () async {},
                              ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.availableTimeChipModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const AvailableTimeChipWidget(
                          fontSize: 10.0,
                          timeFontSize: 10.0,
                          chipWidth: 80.0,
                          chipHeight: 30.0,
                          iconSize: 18.0,
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
