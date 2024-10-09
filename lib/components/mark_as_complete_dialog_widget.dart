import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'mark_as_complete_dialog_model.dart';
export 'mark_as_complete_dialog_model.dart';

class MarkAsCompleteDialogWidget extends StatefulWidget {
  const MarkAsCompleteDialogWidget({super.key});

  @override
  State<MarkAsCompleteDialogWidget> createState() =>
      _MarkAsCompleteDialogWidgetState();
}

class _MarkAsCompleteDialogWidgetState
    extends State<MarkAsCompleteDialogWidget> {
  late MarkAsCompleteDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarkAsCompleteDialogModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.0,
      height: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Icon(
              Icons.error_outline,
              color: const Color.fromARGB(255, 0, 147, 7),
              size: 24.0,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Text(
              'Do you want to mark this request as completed?',
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Text(
              'If you mark this maintenance request as completed, all processes will stop.',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          wrapWithModel(
            model: _model.customTextfieldModel,
            updateCallback: () => safeSetState(() {}),
            child: const CustomTextfieldWidget(
              hintLabel: 'Description',
              label: 'Description',
              password: false,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.customButtonModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: CustomButtonWidget(
                      buttonLabel: 'No',
                      buttonColor: FlutterFlowTheme.of(context).alternate,
                      borderColor: FlutterFlowTheme.of(context).secondaryText,
                      labelColor: FlutterFlowTheme.of(context).secondary,
                      routeTo: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: wrapWithModel(
                    model: _model.customButtonModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: CustomButtonWidget(
                      buttonLabel: 'Yes',
                      buttonColor: FlutterFlowTheme.of(context).primary,
                      borderColor: FlutterFlowTheme.of(context).primary,
                      routeTo: () async {},
                    ),
                  ),
                ),
              ].divide(const SizedBox(width: 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
