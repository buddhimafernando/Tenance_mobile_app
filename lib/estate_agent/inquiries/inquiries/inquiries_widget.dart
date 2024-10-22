import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/inquiry_card/inquiry_card_widget.dart';
import 'package:flutter/material.dart';
import 'inquiries_model.dart';
export 'inquiries_model.dart';

class InquiriesWidget extends StatefulWidget {
  const InquiriesWidget({super.key});

  @override
  State<InquiriesWidget> createState() => _InquiriesWidgetState();
}

class _InquiriesWidgetState extends State<InquiriesWidget> {
  late InquiriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InquiriesModel());

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
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
              child: Text(
                'Inquiries',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter',
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.inquiryCardModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const InquiryCardWidget(
                    title: 'Plumbing maintainance',
                    content:
                        'Dripping faucet in bathroom, wasting water, causing annoyance. Urgent fix needed to conserve precious resources and prevent potential water damage.....',
                  ),
                ),
                wrapWithModel(
                  model: _model.inquiryCardModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const InquiryCardWidget(
                    title: 'Plumbing maintainance',
                    content:
                        'Dripping faucet in bathroom, wasting water, causing annoyance. Urgent fix needed to conserve precious resources and prevent potential water damage.....',
                  ),
                ),
                wrapWithModel(
                  model: _model.inquiryCardModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: const InquiryCardWidget(
                    title: 'Plumbing maintainance',
                    content:
                        'Dripping faucet in bathroom, wasting water, causing annoyance. Urgent fix needed to conserve precious resources and prevent potential water damage.....',
                  ),
                ),
                wrapWithModel(
                  model: _model.inquiryCardModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: const InquiryCardWidget(
                    title: 'Plumbing maintainance',
                    content:
                        'Dripping faucet in bathroom, wasting water, causing annoyance. Urgent fix needed to conserve precious resources and prevent potential water damage.....',
                  ),
                ),
                wrapWithModel(
                  model: _model.inquiryCardModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: const InquiryCardWidget(
                    title: 'Plumbing maintainance',
                    content:
                        'Dripping faucet in bathroom, wasting water, causing annoyance. Urgent fix needed to conserve precious resources and prevent potential water damage.....',
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
