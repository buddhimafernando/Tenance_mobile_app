import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'request_types_header_model.dart';
export 'request_types_header_model.dart';

class RequestTypesHeaderWidget extends StatefulWidget {
  const RequestTypesHeaderWidget({
    super.key,
    required this.onTap,
  });

  final Future Function()? onTap;

  @override
  State<RequestTypesHeaderWidget> createState() =>
      _RequestTypesHeaderWidgetState();
}

class _RequestTypesHeaderWidgetState extends State<RequestTypesHeaderWidget> {
  late RequestTypesHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestTypesHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
          },
          text: 'Pending',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).alternate,
            textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).tertiary,
              width: 0.5,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(0.0),
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('ongoing_service_requests');
          },
          text: 'Ongoing',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).alternate,
            textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).tertiary,
              width: 0.5,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
          },
          text: 'Completed',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).alternate,
            textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).tertiary,
              width: 0.5,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
          },
          text: 'Rejected',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).alternate,
            textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).tertiary,
              width: 0.5,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          showLoadingIndicator: false,
        ),
      ],
    );
  }
}
