import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/pending_request_card/pending_request_card_widget.dart';
import 'package:flutter/material.dart';
import 'pending_service_requests_model.dart';
export 'pending_service_requests_model.dart';

class PendingServiceRequestsWidget extends StatefulWidget {
  const PendingServiceRequestsWidget({super.key});

  @override
  State<PendingServiceRequestsWidget> createState() =>
      _PendingServiceRequestsWidgetState();
}

class _PendingServiceRequestsWidgetState
    extends State<PendingServiceRequestsWidget> {
  late PendingServiceRequestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingServiceRequestsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: FindAllPendingServiceRequestCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final pendingServiceRequestsFindAllPendingServiceRequestResponse =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).alternate,
              automaticallyImplyLeading: false,
              leading: Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
              ),
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
                  child: Text(
                    'Service requests',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowChoiceChips(
                        options: const [
                          ChipData('Pending'),
                          ChipData('Ongoing'),
                          ChipData('Completed'),
                          ChipData('Rejected')
                        ],
                        onChanged: (val) => safeSetState(
                            () => _model.choiceChipsValue = val?.firstOrNull),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                          iconColor: FlutterFlowTheme.of(context).info,
                          iconSize: 16.0,
                          labelPadding: const EdgeInsets.all(5.0),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 16.0,
                          labelPadding: const EdgeInsets.all(5.0),
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).tertiary,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        chipSpacing: 12.0,
                        rowSpacing: 8.0,
                        multiselect: false,
                        initialized: _model.choiceChipsValue != null,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          ['Pending'],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final pendingRequests = getJsonField(
                          pendingServiceRequestsFindAllPendingServiceRequestResponse
                              .jsonBody,
                          r'''$''',
                        ).toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: pendingRequests.length,
                          itemBuilder: (context, pendingRequestsIndex) {
                            final pendingRequestsItem =
                                pendingRequests[pendingRequestsIndex];
                            return Builder(
                              builder: (context) => Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: PendingRequestCardWidget(
                                  key: Key(
                                      'Keyods_${pendingRequestsIndex}_of_${pendingRequests.length}'),
                                  request: 'Plumbing Maintenance',
                                  content: getJsonField(
                                    pendingRequestsItem,
                                    r'''$.MaintenanceRequest.Notes''',
                                  ).toString(),
                                  navigateTo: () async {
                                    context.pushNamed(
                                      'pending_request',
                                      queryParameters: {
                                        'tenant': serializeParam(
                                          getJsonField(
                                            pendingRequestsItem,
                                            r'''$.MaintenanceRequest.TenantId''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                        'tenantId': serializeParam(
                                          getJsonField(
                                            pendingRequestsItem,
                                            r'''$.MaintenanceRequest.TenantId''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          getJsonField(
                                            pendingRequestsItem,
                                            r'''$.MaintenanceRequest.Notes''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                        'images': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'availableTime': serializeParam(
                                          getJsonField(
                                            pendingRequestsItem,
                                            r'''$.MaintenanceRequest.AvailableTime''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  popUp: () async {
                                    context.pushNamed(
                                      'pending_request',
                                      queryParameters: {
                                        'description': serializeParam(
                                          getJsonField(
                                            pendingServiceRequestsFindAllPendingServiceRequestResponse
                                                .jsonBody,
                                            r'''$.MaintenanceId.Notes''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                        'tenant': serializeParam(
                                          valueOrDefault<String>(
                                            getJsonField(
                                              pendingServiceRequestsFindAllPendingServiceRequestResponse
                                                  .jsonBody,
                                              r'''$.MaintenanceRequest.TenantId''',
                                            )?.toString(),
                                            '\$.MaintenanceRequest.tenantid',
                                          ),
                                          ParamType.String,
                                        ),
                                        'tenantId': serializeParam(
                                          valueOrDefault<String>(
                                            getJsonField(
                                              pendingServiceRequestsFindAllPendingServiceRequestResponse
                                                  .jsonBody,
                                              r'''$.MeintenanceRequest.tenantId''',
                                            )?.toString(),
                                            'tenantId',
                                          ),
                                          ParamType.String,
                                        ),
                                        'images': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'availableTime': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}