import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/services_tile/services_tile_widget.dart';
import 'package:flutter/material.dart';
import 'service_workers_model.dart';
export 'service_workers_model.dart';

class ServiceWorkersWidget extends StatefulWidget {
  const ServiceWorkersWidget({super.key});

  @override
  State<ServiceWorkersWidget> createState() => _ServiceWorkersWidgetState();
}

class _ServiceWorkersWidgetState extends State<ServiceWorkersWidget> {
  late ServiceWorkersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceWorkersModel());
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
          automaticallyImplyLeading: true,
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
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          title: Text(
            'Plumbing',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Best workers In The Community',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
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
                            'https://thumbs.dreamstime.com/b/plumbing-service-logo-blue-symbol-white-text-vector-illustration-126377940.jpg',
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
                        title: 'RapidRoots Plumbing',
                        place: 'Burminham',
                        rating: '4.5',
                        image:
                            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/plumber-logo%2C-plumbing-logo%2C-plumbing-company-design-template-1c1432a876da0e6c249543e27de3608c_screen.jpg?ts=1660797584',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.servicesTileModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: const ServicesTileWidget(
                        title: 'ClearLine Plumbing',
                        place: 'Burminham',
                        rating: '4.5',
                        image:
                            'https://images-platform.99static.com//5xW54RKux_0gYkw8Qw9buMRxoyI=/0x0:1111x1111/fit-in/500x500/99designs-contests-attachments/77/77597/attachment_77597252',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Highly rated plumbers',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
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
                      model: _model.servicesTileModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: const ServicesTileWidget(
                        title: 'RapidRoots Plumbing',
                        place: 'Burminham',
                        rating: '4.5',
                        image:
                            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/plumber-logo%2C-plumbing-logo%2C-plumbing-company-design-template-1c1432a876da0e6c249543e27de3608c_screen.jpg?ts=1660797584',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.servicesTileModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: const ServicesTileWidget(
                        title: 'ClearLine Plumbing',
                        place: 'Burminham',
                        rating: '4.5',
                        image:
                            'https://images-platform.99static.com//5xW54RKux_0gYkw8Qw9buMRxoyI=/0x0:1111x1111/fit-in/500x500/99designs-contests-attachments/77/77597/attachment_77597252',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
