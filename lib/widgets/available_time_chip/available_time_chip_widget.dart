import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'available_time_chip_model.dart';
export 'available_time_chip_model.dart';

class AvailableTimeChipWidget extends StatefulWidget {
  const AvailableTimeChipWidget({
    super.key,
    String? date,
    String? time,
    double? fontSize,
    double? timeFontSize,
    double? chipWidth,
    double? chipHeight,
    double? iconSize,
  })  : date = date ?? 'Sep 07',
        time = time ?? 'time',
        fontSize = fontSize ?? 14.0,
        timeFontSize = timeFontSize ?? 14.0,
        chipWidth = chipWidth ?? 100.0,
        chipHeight = chipHeight ?? 100.0,
        iconSize = iconSize ?? 24.0;

  final String date;
  final String time;
  final double fontSize;
  final double timeFontSize;
  final double chipWidth;
  final double chipHeight;
  final double iconSize;

  @override
  State<AvailableTimeChipWidget> createState() =>
      _AvailableTimeChipWidgetState();
}

class _AvailableTimeChipWidgetState extends State<AvailableTimeChipWidget> {
  late AvailableTimeChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvailableTimeChipModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.chipWidth,
      height: valueOrDefault<double>(
        widget.chipHeight,
        50.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today,
            color: FlutterFlowTheme.of(context).secondary,
            size: valueOrDefault<double>(
              widget.iconSize,
              24.0,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.date,
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily: 'Inter',
                        fontSize: widget.fontSize,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  widget.time,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        fontSize: widget.timeFontSize,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
