import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icon_label_button_model.dart';
export 'icon_label_button_model.dart';

class IconLabelButtonWidget extends StatefulWidget {
  const IconLabelButtonWidget({
    super.key,
    this.icon,
    String? iconLabel,
    double? height,
    double? width,
  })  : iconLabel = iconLabel ?? 'iconLabel',
        height = height ?? 90.0,
        width = width ?? 90.0;

  final Widget? icon;
  final String iconLabel;
  final double height;
  final double width;

  @override
  State<IconLabelButtonWidget> createState() => _IconLabelButtonWidgetState();
}

class _IconLabelButtonWidgetState extends State<IconLabelButtonWidget> {
  late IconLabelButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconLabelButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 45.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: widget.icon!,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              widget.iconLabel,
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
