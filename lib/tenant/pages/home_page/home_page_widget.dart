import '/components/pie_chart_label_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/horizontal_carousal/horizontal_carousal_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
    String? tenantId,
  }) : tenantId = tenantId ?? '12345';

  final String tenantId;

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
    final chartPieChartColorsList = [
      FlutterFlowTheme.of(context).primary,
      const Color(0xFF00A7FF),
      const Color(0xFF41BAFF),
      const Color(0xFF93DAFF)
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).alternate,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/383/600',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      'assets/images/error_image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              title: Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    AutoSizeText(
                      FFAppState().userName,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              actions: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.question_mark,
                        color: FlutterFlowTheme.of(context).info,
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              toolbarHeight: 100.0,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('new_request');
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/requests.png',
                                          width: 80.0,
                                          height: 66.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'New request',
                                    style: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('service_requests');
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/services.png',
                                          width: 66.0,
                                          height: 66.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Maintenance',
                                    style: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/chats.png',
                                        width: 60.0,
                                        height: 66.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Chats',
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ongoing maintenance requests',
                              style: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'MORE',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.horizontalCarousalModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const HorizontalCarousalWidget(),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Maintenance requests percentage',
                            style: FlutterFlowTheme.of(context)
                                .displayLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: SizedBox(
                                width: 230.0,
                                height: 210.0,
                                child: FlutterFlowPieChart(
                                  data: FFPieChartData(
                                    values: _model.values,
                                    colors: chartPieChartColorsList,
                                    radius: [50.0],
                                    borderColor: [const Color(0x00000000)],
                                  ),
                                  donutHoleRadius: 50.0,
                                  donutHoleColor: Colors.transparent,
                                  sectionLabelType:
                                      PieChartSectionLabelType.percent,
                                  sectionLabelStyle:
                                      FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 200.0,
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.pieChartLabelModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PieChartLabelWidget(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          label: 'Pending',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200.0,
                                      child: wrapWithModel(
                                        model: _model.pieChartLabelModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const PieChartLabelWidget(
                                          color: Color(0xFF00A7FF),
                                          label: 'Ongoing',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 200.0,
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.pieChartLabelModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const PieChartLabelWidget(
                                          color: Color(0xFF41BAFF),
                                          label: 'Completed',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 200.0,
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.pieChartLabelModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const PieChartLabelWidget(
                                          color: Color(0xFF93DAFF),
                                          label: 'Rejected',
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
