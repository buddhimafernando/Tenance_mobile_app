import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/icon_label_button/icon_label_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import '/widgets/skill_chips/skill_chips_widget.dart';
import 'package:flutter/material.dart';
import 'maintenance_provider_profile_model.dart';
export 'maintenance_provider_profile_model.dart';

class MaintenanceProviderProfileWidget extends StatefulWidget {
  const MaintenanceProviderProfileWidget({
    super.key,
    String? workerName,
    String? workerImage,
  })  : workerName = workerName ?? 'workerName',
        workerImage = workerImage ??
            'https://www.nicepng.com/png/detail/913-9133404_plumbing-installation-amp-plumber.png';

  final String workerName;
  final String workerImage;

  @override
  State<MaintenanceProviderProfileWidget> createState() =>
      _MaintenanceProviderProfileWidgetState();
}

class _MaintenanceProviderProfileWidgetState
    extends State<MaintenanceProviderProfileWidget> {
  late ServiceProviderProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceProviderProfileModel());
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
          leading: Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
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
                print('IconButton pressed ...');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-0.4, 0.0),
            child: Text(
              widget.workerName,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 165.0,
                      height: 251.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://thumbs.dreamstime.com/b/plumbing-service-logo-blue-symbol-white-text-vector-illustration-126377940.jpg",
                          // width: 270.0,
                          height: 169.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsetsDirectional.fromSTEB(
                    //       10.0, 0.0, 0.0, 0.0),
                    //   child: Column(
                    //     mainAxisSize: MainAxisSize.max,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //   ),
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 20.0, 0.0, 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.iconLabelButtonModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: IconLabelButtonWidget(
                              icon: Icon(
                                Icons.email,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              iconLabel: 'Send email',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: wrapWithModel(
                            model: _model.iconLabelButtonModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: IconLabelButtonWidget(
                              icon: Icon(
                                Icons.chat_bubble_outlined,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              iconLabel: 'Send chat',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: wrapWithModel(
                            model: _model.iconLabelButtonModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: IconLabelButtonWidget(
                              icon: Icon(
                                Icons.call,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              iconLabel: 'Get a call',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelAndContentModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Agreement Id',
                      content: '127812974934',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelAndContentModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Service provider id',
                      content: '6758477487',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelAndContentModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Provided services',
                      content: 'Licenced plumber',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelAndContentModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Mobile number',
                      content: '+9484738534',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelAndContentModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: const LabelAndContentWidget(
                      label: 'Email',
                      content: 'yahyasateha@gmail.com',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
