import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/completed_request_card/completed_request_card_widget.dart';
import '/widgets/ongoing_request_card/ongoing_request_card_widget.dart';
import '/widgets/pending_request_card/pending_request_card_widget.dart';
import 'package:flutter/material.dart';
import 'pending_service_requests_copy_model.dart';
export 'pending_service_requests_copy_model.dart';

class PendingServiceRequestsCopyWidget extends StatefulWidget {
  const PendingServiceRequestsCopyWidget({super.key});

  @override
  State<PendingServiceRequestsCopyWidget> createState() =>
      _PendingServiceRequestsCopyWidgetState();
}

class _PendingServiceRequestsCopyWidgetState
    extends State<PendingServiceRequestsCopyWidget>
    with TickerProviderStateMixin {
  late PendingServiceRequestsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingServiceRequestsCopyModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: false,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          elevation: 0.0,
                          padding: const EdgeInsets.all(5.0),
                          tabs: const [
                            Tab(
                              text: 'Pending',
                            ),
                            Tab(
                              text: 'Ongoing',
                            ),
                            Tab(
                              text: 'Completed',
                            ),
                            Tab(
                              text: 'Rejected',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [
                              () async {},
                              () async {},
                              () async {},
                              () async {}
                            ][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            FutureBuilder<ApiCallResponse>(
                              future: FindAllPendingServiceRequestCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final columnFindAllPendingServiceRequestResponse =
                                    snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    final pending = getJsonField(
                                      columnFindAllPendingServiceRequestResponse
                                          .jsonBody,
                                      r'''$''',
                                    ).toList();

                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(pending.length,
                                            (pendingIndex) {
                                          final pendingItem =
                                              pending[pendingIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: PendingRequestCardWidget(
                                              key: Key(
                                                  'Keydt9_${pendingIndex}_of_${pending.length}'),
                                              content: getJsonField(
                                                columnFindAllPendingServiceRequestResponse
                                                    .jsonBody,
                                                r'''$.MaintenanceRequest.Notes''',
                                              ).toString(),
                                              navigateTo: () async {
                                                context.pushNamed(
                                                  'pending_request',
                                                  queryParameters: {
                                                    'tenant': serializeParam(
                                                      getJsonField(
                                                        pendingItem,
                                                        r'''$.MaintenanceRequest.TenantId''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'tenantId': serializeParam(
                                                      getJsonField(
                                                        pendingItem,
                                                        r'''$.MaintenanceRequest.TenantId''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'description':
                                                        serializeParam(
                                                      getJsonField(
                                                        pendingItem,
                                                        r'''$.MaintenanceRequest.Notes''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'images': serializeParam(
                                                      '',
                                                      ParamType.String,
                                                    ),
                                                    'availableTime':
                                                        serializeParam(
                                                      getJsonField(
                                                        pendingItem,
                                                        r'''$.MaintenanceRequest.AvailableTime''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              popUp: () async {},
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future: FindAllOngoingServiceRequestsCall
                                        .call(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewFindAllOngoingServiceRequestsResponse =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final ongoing = getJsonField(
                                            listViewFindAllOngoingServiceRequestsResponse
                                                .jsonBody,
                                            r'''$''',
                                          ).toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: ongoing.length,
                                            itemBuilder:
                                                (context, ongoingIndex) {
                                              final ongoingItem =
                                                  ongoing[ongoingIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: OngoingRequestCardWidget(
                                                  key: Key(
                                                      'Keyp38_${ongoingIndex}_of_${ongoing.length}'),
                                                  content: getJsonField(
                                                    ongoingItem,
                                                    r'''$.MaintenanceRequest.Notes''',
                                                  ).toString(),
                                                  navigateTo: () async {
                                                    context.pushNamed(
                                                      'ongoing_request',
                                                      queryParameters: {
                                                        'requestId':
                                                            serializeParam(
                                                          getJsonField(
                                                            ongoingItem,
                                                            r'''$.MaintenanceRequest.TenantId''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'maintenanceType':
                                                            serializeParam(
                                                          getJsonField(
                                                            ongoingItem,
                                                            r'''$.MaintenanceRequest.MaintenanceType''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'description':
                                                            serializeParam(
                                                          getJsonField(
                                                            ongoingItem,
                                                            r'''$.MaintenanceRequest.Notes''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'images':
                                                            serializeParam(
                                                          '',
                                                          ParamType.String,
                                                        ),
                                                        'availableTime':
                                                            serializeParam(
                                                          getJsonField(
                                                            ongoingItem,
                                                            r'''$.MaintenanceRequest.AvailableTime''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future: FindAllCompletedServiceRequestsCall
                                        .call(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewFindAllCompletedServiceRequestsResponse =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final completed = getJsonField(
                                            listViewFindAllCompletedServiceRequestsResponse
                                                .jsonBody,
                                            r'''$''',
                                          ).toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: completed.length,
                                            itemBuilder:
                                                (context, completedIndex) {
                                              final completedItem =
                                                  completed[completedIndex];
                                              return CompletedRequestCardWidget(
                                                key: Key(
                                                    'Key9t8_${completedIndex}_of_${completed.length}'),
                                                request: getJsonField(
                                                  completedItem,
                                                  r'''$.MaintenanceRequestId.MaintenanceType''',
                                                ).toString(),
                                                content: getJsonField(
                                                  completedItem,
                                                  r'''$.MaintenanceRequestId.Notes''',
                                                ).toString(),
                                                name: 'dwc',
                                                navigateTo: () async {},
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
