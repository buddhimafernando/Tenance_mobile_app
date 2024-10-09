import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/services_tile/services_tile_widget.dart';
import 'package:flutter/material.dart';
import 'service_providers_model.dart';
export 'service_providers_model.dart';

class ServiceProvidersWidget extends StatefulWidget {
  const ServiceProvidersWidget({super.key});

  @override
  State<ServiceProvidersWidget> createState() => _ServiceProvidersWidgetState();
}

class _ServiceProvidersWidgetState extends State<ServiceProvidersWidget> {
  late ServiceProvidersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceProvidersModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 50.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).info,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 45.0, 0.0),
              child: Text(
                'Service providers',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 22.0,
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'TextField',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFB5B5B5),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator:
                          _model.textControllerValidator.asValidator(context),
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
                        model: _model.servicesTileModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const ServicesTileWidget(
                          title: 'Aquatech Plumbing',
                          place: 'Burminham',
                          rating: '4.5',
                          image:
                              'https://img.freepik.com/premium-vector/plumbing-service-logo_7085-66.jpg',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesTileModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const ServicesTileWidget(
                          title: 'Proflow Plumbing',
                          place: 'Burminham',
                          rating: '4.5',
                          image:
                              'https://img.freepik.com/premium-vector/plumbing-service-logo_7085-66.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      wrapWithModel(
                        model: _model.servicesTileModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const ServicesTileWidget(
                          title: 'ClearLine Plumbing',
                          place: 'Burminham',
                          rating: '4.5',
                          image:
                              'https://img.freepik.com/premium-vector/plumbing-service-logo_7085-66.jpg',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesTileModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: const ServicesTileWidget(
                          title: 'BlueSky Plumbing',
                          place: 'Burminham',
                          rating: '4.5',
                          image:
                              'https://img.freepik.com/premium-vector/plumbing-service-logo_7085-66.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      wrapWithModel(
                        model: _model.servicesTileModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: const ServicesTileWidget(
                          title: 'RapidRoots Plumbing',
                          place: 'Burminham',
                          rating: '4.5',
                          image:
                              'https://img.freepik.com/premium-vector/plumbing-service-logo_7085-66.jpg',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesTileModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: const ServicesTileWidget(
                          title: 'Elitefix Plumbing',
                          place: 'Burminham',
                          rating: '4.5',
                          image:
                              'https://img.freepik.com/premium-vector/plumbing-service-logo_7085-66.jpg',
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
