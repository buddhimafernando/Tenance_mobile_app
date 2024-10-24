import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/icon_label_button/icon_label_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import 'package:flutter/material.dart';
import 'ongoing_service_provider_profile_model.dart';
export 'ongoing_service_provider_profile_model.dart';

class OngoingServiceProviderProfileWidget extends StatefulWidget {
  const OngoingServiceProviderProfileWidget({
    super.key,
    required this.agreementId,
    required this.serviceProviderId,
    required this.providedServices,
    required this.mobileNumber,
    required this.email,
    String? workerName,
    String? workerImage,
  })  : workerName = workerName ?? 'workerName',
        workerImage = workerImage ??
            'https://www.nicepng.com/png/detail/913-9133404_plumbing-installation-amp-plumber.png';

  final String? agreementId;
  final String? serviceProviderId;
  final String? providedServices;
  final String? mobileNumber;
  final String? email;
  final String workerName;
  final String workerImage;

  @override
  State<OngoingServiceProviderProfileWidget> createState() =>
      _OngoingServiceProviderProfileWidgetState();
}

class _OngoingServiceProviderProfileWidgetState
    extends State<OngoingServiceProviderProfileWidget> {
  late OngoingServiceProviderProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OngoingServiceProviderProfileModel());

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
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/423/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: wrapWithModel(
                          model: _model.iconLabelButtonModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: IconLabelButtonWidget(
                            icon: Icon(
                              Icons.email,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            iconLabel: 'Send email',
                            height: 100.0,
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
                            10.0, 10.0, 10.0, 10.0),
                        child: wrapWithModel(
                          model: _model.iconLabelButtonModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: IconLabelButtonWidget(
                            icon: Icon(
                              Icons.chat_bubble_outlined,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            iconLabel: 'Send chat',
                            height: 100.0,
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
                            10.0, 10.0, 10.0, 10.0),
                        child: wrapWithModel(
                          model: _model.iconLabelButtonModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: IconLabelButtonWidget(
                            icon: Icon(
                              Icons.call,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            iconLabel: 'Get a call',
                            height: 100.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.labelAndContentModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelAndContentWidget(
                    label: 'Agreement id',
                    content: widget.agreementId,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelAndContentModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelAndContentWidget(
                    label: 'Service provider id',
                    content: widget.serviceProviderId,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelAndContentModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelAndContentWidget(
                    label: 'Provided services',
                    content: widget.providedServices,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelAndContentModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelAndContentWidget(
                    label: 'Mobile number',
                    content: widget.mobileNumber,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelAndContentModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelAndContentWidget(
                    label: 'Email',
                    content: widget.email,
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
