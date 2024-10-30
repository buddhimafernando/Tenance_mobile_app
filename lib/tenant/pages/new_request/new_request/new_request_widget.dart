import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/date_time_field/date_time_field_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_request_model.dart';
export 'new_request_model.dart';

class NewRequestWidget extends StatefulWidget {
  const NewRequestWidget({
    super.key,
    this.dropdownList,
    this.selectedDate,
    this.time,
    this.propertyIdList,
  });

  final List<String>? dropdownList;
  final DateTime? selectedDate;
  final String? time;
  final List<String>? propertyIdList;

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

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).info,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
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
          toolbarHeight: 100.0,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: FindPropertyByTenantIdCall.call(
              tenantId: 'a6451d71-8c3d-4058-8ad6-d254ef08dbbe',
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              final columnFindPropertyByTenantIdResponse = snapshot.data!;

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Properties',
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: FlutterFlowRadioButton(
                          options: (getJsonField(
                            columnFindPropertyByTenantIdResponse.jsonBody,
                            r'''$[:].Title''',
                            true,
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()
                              .toList(),
                          onChanged: (val) async {
                            safeSetState(() {});
                            _model.propertyId = getJsonField(
                              columnFindPropertyByTenantIdResponse.jsonBody,
                              r'''$[:].PropertyId''',
                            ).toString();
                            safeSetState(() {});
                          },
                          controller: _model.propertiesValueController ??=
                              FormFieldController<String>(null),
                          optionHeight: 32.0,
                          textStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor:
                              FlutterFlowTheme.of(context).primary,
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.maintenanceTypeModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomDropdownWidget(
                          hintText: 'Select your maintainence type',
                          label: 'Maintainence type',
                          listOfOptions: _model.dropDown,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Upload image',
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            _model.propertyId,
                            '123456',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
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
                        model: _model.noteModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const CustomTextfieldWidget(
                          hintLabel: 'Enter additional notes, if needed',
                          label: 'Additional note',
                          maxLines: 3,
                          password: false,
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
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.availableTime1Model1,
                        updateCallback: () => safeSetState(() {}),
                        child: DateTimeFieldWidget(
                          selectedDate: widget.selectedDate,
                          popUp: () async {},
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.availableTime1Model2,
                        updateCallback: () => safeSetState(() {}),
                        child: DateTimeFieldWidget(
                          selectedDate: widget.selectedDate,
                          popUp: () async {},
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.availableTime1Model3,
                        updateCallback: () => safeSetState(() {}),
                        child: DateTimeFieldWidget(
                          selectedDate: widget.selectedDate,
                          popUp: () async {},
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.customButtonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomButtonWidget(
                          buttonLabel: 'Send',
                          routeTo: () async {
                            // create maintenance request
                            _model.apiResultui8 =
                                await CreateMaintainenanceRequestCall.call(
                              description: _model.noteModel.textController.text,
                              availableTime: _model
                                  .availableTime1Model1.datePicked
                                  ?.toString(),
                              tenantId: FFAppState().tenantId,
                              propertyId: '4ws',
                              deleted: false,
                              agentId: '728950aa-f718-435a-9d3c-830c91bca97e',
                              ownerId: '49588e28-65fc-4bf2-ab82-5a974854fa0f',
                              maintenanceType:
                                  _model.maintenanceTypeModel.dropDownValue,
                            );

                            if ((_model.apiResultui8?.succeeded ?? true)) {
                              context.pushNamed('request_sent');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Failed to create a request.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          lineHeight: 10.0,
                                        ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                            }

                            safeSetState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
