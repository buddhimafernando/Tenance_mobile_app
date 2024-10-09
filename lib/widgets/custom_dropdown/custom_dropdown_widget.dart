import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'custom_dropdown_model.dart';
export 'custom_dropdown_model.dart';

class CustomDropdownWidget extends StatefulWidget {
  const CustomDropdownWidget({
    super.key,
    String? hintText,
    String? label,
  })  : hintText = hintText ?? 'hintText',
        label = label ?? 'label';

  final String hintText;
  final String label;

  @override
  State<CustomDropdownWidget> createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  late CustomDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDropdownModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Text(
              widget.label,
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(null),
              options: List<String>.from(['Option 1', 'Option 2', 'Option 3']),
              optionLabels: const ['Option 1', 'Option 2', 'Option 3'],
              onChanged: (val) =>
                  safeSetState(() => _model.dropDownValue = val),
              width: double.infinity,
              height: 40.0,
              textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).tertiary,
                    letterSpacing: 0.0,
                  ),
              hintText: valueOrDefault<String>(
                widget.hintText,
                'Selectitem',
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 20.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).tertiary,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ],
      ),
    );
  }
}
