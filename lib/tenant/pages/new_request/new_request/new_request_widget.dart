import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/date_time_field/date_time_field_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'new_request_model.dart';
export 'new_request_model.dart';

class NewRequestWidget extends StatefulWidget {
  const NewRequestWidget({
    super.key,
    this.dropdownList,
    this.selectedDate,
  });

  final List<String>? dropdownList;
  final DateTime? selectedDate;

  @override
  State<NewRequestWidget> createState() => _NewRequestWidgetState();
}

class _NewRequestWidgetState extends State<NewRequestWidget> {
  late NewRequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewRequestModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).info,
                  size: 20.0,
                ),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
              child: Text(
                'New request',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.customTextfieldModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const CustomTextfieldWidget(
                      hintLabel: 'Enter your property id',
                      label: 'Property id',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.customDropdownModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomDropdownWidget(
                    hintText: 'Select your maintainence type',
                    label: 'Maintainence type',
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Upload image',
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.uploadImageModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const UploadImageWidget(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.customTextfieldModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: const CustomTextfieldWidget(
                      hintLabel: 'Enter additional notes, if needed',
                      label: 'Additional note',
                      maxLines: 3,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 10.0, 0.0, 20.0),
                    child: Text(
                      'Times you are available at home',
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      20.0, 0.0, 20.0, 0.0),
                  child: wrapWithModel(
                    model: _model.dateTimeFieldModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: DateTimeFieldWidget(
                      selectedDate: widget.selectedDate,
                      popUp: () async {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      20.0, 0.0, 20.0, 0.0),
                  child: wrapWithModel(
                    model: _model.dateTimeFieldModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: DateTimeFieldWidget(
                      popUp: () async {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      20.0, 0.0, 20.0, 0.0),
                  child: wrapWithModel(
                    model: _model.dateTimeFieldModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: DateTimeFieldWidget(
                      popUp: () async {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      20.0, 0.0, 20.0, 0.0),
                  child: wrapWithModel(
                    model: _model.customButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CustomButtonWidget(
                      buttonLabel: 'Send',
                      routeTo: () async {
                        context.pushNamed('request_sent');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
