import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'delete_dialog_model.dart';
export 'delete_dialog_model.dart';

class DeleteDialogWidget extends StatefulWidget {
  const DeleteDialogWidget({super.key});

  @override
  State<DeleteDialogWidget> createState() => _DeleteDialogWidgetState();
}

class _DeleteDialogWidgetState extends State<DeleteDialogWidget> {
  late DeleteDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteDialogModel());
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
      height: 299.0,
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
              color: FlutterFlowTheme.of(context).error,
              size: 24.0,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Text(
              'Do you want to cancel the request?',
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Text(
              'If you cancel this maintenance request, the request will not be visible to the agent.',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          wrapWithModel(
            model: _model.customDropdownModel,
            updateCallback: () => safeSetState(() {}),
            child: const CustomDropdownWidget(
              hintText: 'Reason',
              label: 'Reason',
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
                      buttonLabel: 'Cancel',
                      buttonColor: FlutterFlowTheme.of(context).error,
                      borderColor: FlutterFlowTheme.of(context).error,
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
