import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'status_button_model.dart';
export 'status_button_model.dart';

class StatusButtonWidget extends StatefulWidget {
  const StatusButtonWidget({
    super.key,
    Color? buttonColor,
    String? buttonLabel,
  })  : buttonColor = buttonColor ?? const Color(0x6646A5DC),
        buttonLabel = buttonLabel ?? 'Pending';

  final Color buttonColor;
  final String buttonLabel;

  @override
  State<StatusButtonWidget> createState() => _StatusButtonWidgetState();
}

class _StatusButtonWidgetState extends State<StatusButtonWidget> {
  late StatusButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.buttonLabel,
      options: FFButtonOptions(
        height: 25.0,
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: valueOrDefault<Color>(
          widget.buttonColor,
          const Color(0x6646A5DC),
        ),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter',
              color: FlutterFlowTheme.of(context).secondary,
              fontSize: 8.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
