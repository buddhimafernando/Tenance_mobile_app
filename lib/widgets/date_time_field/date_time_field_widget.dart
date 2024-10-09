import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/calendar_pop_up/calendar_pop_up_widget.dart';
import 'package:flutter/material.dart';
import 'date_time_field_model.dart';
export 'date_time_field_model.dart';

class DateTimeFieldWidget extends StatefulWidget {
  const DateTimeFieldWidget({
    super.key,
    String? date,
    String? time,
    required this.popUp,
    this.selectedDate,
  })  : date = date ?? 'date',
        time = time ?? 'time';

  final String date;
  final String time;
  final Future Function()? popUp;
  final DateTime? selectedDate;

  @override
  State<DateTimeFieldWidget> createState() => _DateTimeFieldWidgetState();
}

class _DateTimeFieldWidgetState extends State<DateTimeFieldWidget> {
  late DateTimeFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateTimeFieldModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.date,
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    widget.time,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 5.0)),
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Builder(
                  builder: (context) => FFButtonWidget(
                    onPressed: () async {
                      await showDialog(
                        barrierColor: const Color(0x80000000),
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: const AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: CalendarPopUpWidget(
                              selectedDay: widget.selectedDate,
                            ),
                          );
                        },
                      );
                    },
                    text: 'Select',
                    options: FFButtonOptions(
                      width: 70.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).alternate,
                      textStyle:
                          FlutterFlowTheme.of(context).displaySmall.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).tertiary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).tertiary,
          ),
        ],
      ),
    );
  }
}
