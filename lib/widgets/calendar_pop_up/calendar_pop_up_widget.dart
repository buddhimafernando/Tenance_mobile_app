import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'calendar_pop_up_model.dart';
export 'calendar_pop_up_model.dart';

class CalendarPopUpWidget extends StatefulWidget {
  const CalendarPopUpWidget({
    super.key,
    this.selectedDay,
  });

  final DateTime? selectedDay;

  @override
  State<CalendarPopUpWidget> createState() => _CalendarPopUpWidgetState();
}

class _CalendarPopUpWidgetState extends State<CalendarPopUpWidget> {
  late CalendarPopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarPopUpModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 550.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowCalendar(
              color: const Color(0x7F46A5DC),
              iconColor: FlutterFlowTheme.of(context).secondaryText,
              weekFormat: false,
              weekStartsMonday: true,
              initialDate: widget.selectedDay,
              rowHeight: 40.0,
              onChange: (DateTimeRange? newSelectedDate) {
                safeSetState(
                    () => _model.calendarSelectedDay = newSelectedDate);
              },
              titleStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              dayOfWeekStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
              dateStyle: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              selectedDateStyle:
                  FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
              inactiveDateStyle:
                  FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).tertiary,
                        letterSpacing: 0.0,
                      ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Which time?',
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: FlutterFlowCheckboxGroup(
                options: const [
                  'Morning (8:00 - 12:00)',
                  'Afternoon (12:00 - 17:00)',
                  'Evening (17:00 - 21:30)'
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.checkboxGroupValues = val),
                controller: _model.checkboxGroupValueController ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
                checkboxBorderColor: FlutterFlowTheme.of(context).tertiary,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                checkboxBorderRadius: BorderRadius.circular(4.0),
                initialized: _model.checkboxGroupValues != null,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
              child: wrapWithModel(
                model: _model.customButtonModel,
                updateCallback: () => safeSetState(() {}),
                child: CustomButtonWidget(
                  buttonLabel: 'Send',
                  routeTo: () async {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
