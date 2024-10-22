import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'cancel_button_model.dart';
export 'cancel_button_model.dart';

class CancelButtonWidget extends StatefulWidget {
  const CancelButtonWidget({
    super.key,
    String? button,
    double? fontSize,
    Color? labelColor,
    Color? buttonColor,
    Color? borderColor,
    double? buttonWidth,
    double? buttonHeight,
    required this.onPressed,
  })  : button = button ?? 'button',
        fontSize = fontSize ?? 14.0,
        labelColor = labelColor ?? const Color(0xFFAE0E17),
        buttonColor = buttonColor ?? const Color(0xFFAE0E17),
        borderColor = borderColor ?? const Color(0xFFAE0E17),
        buttonWidth = buttonWidth ?? 100.0,
        buttonHeight = buttonHeight ?? 30.0;

  final String button;
  final double fontSize;
  final Color labelColor;
  final Color buttonColor;
  final Color borderColor;
  final double buttonWidth;
  final double buttonHeight;
  final Future Function()? onPressed;

  @override
  State<CancelButtonWidget> createState() => _CancelButtonWidgetState();
}

class _CancelButtonWidgetState extends State<CancelButtonWidget> {
  late CancelButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () async {
          await widget.onPressed?.call();
        },
        text: widget.button,
        options: FFButtonOptions(
          width: widget.buttonWidth,
          height: 40.0,
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: widget.buttonColor,
          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Inter',
                color: valueOrDefault<Color>(
                  widget.labelColor,
                  FlutterFlowTheme.of(context).alternate,
                ),
                fontSize: widget.fontSize,
                letterSpacing: 0.0,
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: widget.borderColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
