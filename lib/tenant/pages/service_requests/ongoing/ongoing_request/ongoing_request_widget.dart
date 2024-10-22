import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/available_time_chip/available_time_chip_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import '/widgets/mark_as_complete_dialog/mark_as_complete_dialog_widget.dart';
import '/widgets/mark_as_incomplete_dialog/mark_as_incomplete_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'ongoing_request_model.dart';
export 'ongoing_request_model.dart';

class OngoingRequestWidget extends StatefulWidget {
  const OngoingRequestWidget({
    super.key,
    required this.requestId,
    required this.maintenanceType,
    required this.description,
    required this.images,
    required this.availableTime,
  });

  final String? requestId;
  final String? maintenanceType;
  final String? description;
  final String? images;
  final String? availableTime;

  @override
  State<OngoingRequestWidget> createState() => _OngoingRequestWidgetState();
}

class _OngoingRequestWidgetState extends State<OngoingRequestWidget> {
  late OngoingRequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OngoingRequestModel());

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
          title: Text(
            'Service requests',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.labelAndContentModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Tenant',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.labelAndContentModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelAndContentWidget(
                    label: 'Tenant id',
                    content: '12345678',
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: wrapWithModel(
                    model: _model.labelAndContentModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Plumbing Status',
                      content:
                          'Dripping faucet in bathroom, wasting water, causing annoyance. Urgent fix needed to conserve precious resources and prevent potential water damage.....',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Images',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 292.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://eco1plumbingmiami.com/wp-content/uploads/2019/09/Most-Common-In-House-Plumbing-Problems.jpg',
                        width: 200.0,
                        height: 367.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 20.0),
                  child: Text(
                    'Available times',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      wrapWithModel(
                        model: _model.availableTimeChipModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const AvailableTimeChipWidget(
                          chipHeight: 50.0,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.availableTimeChipModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const AvailableTimeChipWidget(
                          chipHeight: 50.0,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.availableTimeChipModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const AvailableTimeChipWidget(
                          chipHeight: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Status',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'To check the status, go to ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'Status',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Status',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/proflow-plumbing.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AquaTech plumbing',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'olivia@gmail.com',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 20.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).accent1,
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.person,
                              color: FlutterFlowTheme.of(context).accent1,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.chat_bubble,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ].divide(const SizedBox(width: 20.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 40.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Builder(
                          builder: (context) => wrapWithModel(
                            model: _model.customButtonModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: CustomButtonWidget(
                              buttonLabel: 'Incomplete',
                              buttonColor: FlutterFlowTheme.of(context).error,
                              borderColor: FlutterFlowTheme.of(context).error,
                              routeTo: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () =>
                                            FocusScope.of(dialogContext)
                                                .unfocus(),
                                        child: const MarkAsIncompleteDialogWidget(),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) => wrapWithModel(
                            model: _model.customButtonModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: CustomButtonWidget(
                              buttonLabel: 'Complete',
                              routeTo: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () =>
                                            FocusScope.of(dialogContext)
                                                .unfocus(),
                                        child: const MarkAsCompleteDialogWidget(),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
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