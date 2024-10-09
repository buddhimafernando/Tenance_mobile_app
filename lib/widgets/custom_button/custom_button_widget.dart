import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'custom_button_model.dart';
export 'custom_button_model.dart';

class CustomButtonWidget extends StatefulWidget {
  const CustomButtonWidget({
    super.key,
    String? buttonLabel,
    this.buttonColor,
    this.borderColor,
    this.labelColor,
    double? buttonLabelSize,
    double? buttonHeight,
    required this.routeTo,
  })  : buttonLabel = buttonLabel ?? 'buttonLabel',
        buttonLabelSize = buttonLabelSize ?? 16.0,
        buttonHeight = buttonHeight ?? 50.0;

  final String buttonLabel;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? labelColor;
  final double buttonLabelSize;
  final double buttonHeight;
  final Future Function()? routeTo;

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  late CustomButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomButtonModel());
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
          await widget.routeTo?.call();
        },
        text: widget.buttonLabel,
        options: FFButtonOptions(
          width: double.infinity,
          height: widget.buttonHeight,
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: valueOrDefault<Color>(
            widget.buttonColor,
            FlutterFlowTheme.of(context).primary,
          ),
          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Inter',
                color: widget.labelColor,
                fontSize: widget.buttonLabelSize,
                letterSpacing: 0.0,
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: valueOrDefault<Color>(
              widget.borderColor,
              FlutterFlowTheme.of(context).primary,
            ),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
