import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/services_tile/services_tile_widget.dart';
import 'package:flutter/material.dart';
import 'service_category_model.dart';
export 'service_category_model.dart';

class ServiceCategoryWidget extends StatefulWidget {
  const ServiceCategoryWidget({super.key});

  @override
  State<ServiceCategoryWidget> createState() => _ServiceCategoryWidgetState();
}

class _ServiceCategoryWidgetState extends State<ServiceCategoryWidget> {
  late ServiceCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceCategoryModel());
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
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
                        title: 'BlueSky Plumbers',
                        place: 'Burminham',
                        rating: '4.5',
                        image:
                            'https://cdn.vectorstock.com/i/500p/35/48/plumber-with-plumbing-wrench-logo-technical-vector-46233548.jpg',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.servicesTileModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: const ServicesTileWidget(
                        title: 'EliteFix Plumbing',
                        place: 'Burminham',
                        rating: '4.5',
                        image:
                            'https://images-platform.99static.com//mQ0oUbhCxj1r-pyKAprOPXJz2CA=/0x0:1000x1000/fit-in/500x500/99designs-contests-attachments/100/100194/attachment_100194981',
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
