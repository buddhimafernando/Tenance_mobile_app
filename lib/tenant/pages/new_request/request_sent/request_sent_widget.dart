import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'request_sent_model.dart';
export 'request_sent_model.dart';

class RequestSentWidget extends StatefulWidget {
  const RequestSentWidget({super.key});

  @override
  State<RequestSentWidget> createState() => _RequestSentWidgetState();
}

class _RequestSentWidgetState extends State<RequestSentWidget> {
  late RequestSentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestSentModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/star.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, 0.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Text(
                  'Request sent',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(60.0, 20.0, 60.0, 20.0),
                child: Text(
                  'Your maintenance request has been sent successfully',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).accent1,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.customButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomButtonWidget(
                    buttonLabel: 'Back to home',
                    routeTo: () async {
                      context.pushNamed('homePage');
                    },
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
