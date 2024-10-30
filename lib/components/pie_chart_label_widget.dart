import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pie_chart_label_model.dart';
export 'pie_chart_label_model.dart';

class PieChartLabelWidget extends StatefulWidget {
  const PieChartLabelWidget({
    super.key,
    Color? color,
    String? label,
  })  : color = color ?? const Color(0xFF299ED9),
        label = label ?? 'label';

  final Color color;
  final String label;

  @override
  State<PieChartLabelWidget> createState() => _PieChartLabelWidgetState();
}

class _PieChartLabelWidgetState extends State<PieChartLabelWidget> {
  late PieChartLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PieChartLabelModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
        Text(
          widget.label,
          style: FlutterFlowTheme.of(context).labelSmall.override(
                fontFamily: 'Inter',
                letterSpacing: 0.0,
              ),
        ),
      ].divide(const SizedBox(width: 5.0)).around(const SizedBox(width: 5.0)),
    );
  }
}
