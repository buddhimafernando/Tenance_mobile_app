import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_appbar/custom_appbar_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import 'package:flutter/material.dart';
import 'inquiry_view_model.dart';
export 'inquiry_view_model.dart';

class InquiryViewWidget extends StatefulWidget {
  const InquiryViewWidget({super.key});

  @override
  State<InquiryViewWidget> createState() => _InquiryViewWidgetState();
}

class _InquiryViewWidgetState extends State<InquiryViewWidget> {
  late InquiryViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InquiryViewModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.customAppbarModel,
                updateCallback: () => safeSetState(() {}),
                child: const CustomAppbarWidget(
                  title: 'Inquiry',
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.labelAndContentModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelAndContentWidget(
                    label: 'Tenant',
                    content: 'Mr Bean',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.labelAndContentModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelAndContentWidget(
                    label: 'Tenant id',
                    content: '12345678',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
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
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
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
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: wrapWithModel(
                  model: _model.customButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomButtonWidget(
                    buttonLabel: 'Reply',
                    routeTo: () async {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
