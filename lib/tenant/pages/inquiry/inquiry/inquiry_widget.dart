import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import '/widgets/upload_image/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'inquiry_model.dart';
export 'inquiry_model.dart';

class InquiryWidget extends StatefulWidget {
  const InquiryWidget({super.key});

  @override
  State<InquiryWidget> createState() => _InquiryWidgetState();
}

class _InquiryWidgetState extends State<InquiryWidget> {
  late InquiryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InquiryModel());
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).alternate,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Inquiry',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.customTextfieldModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your subject',
                    label: 'Subject',
                  ),
                ),
                wrapWithModel(
                  model: _model.customTextfieldModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your message',
                    label: 'Message',
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Upload image',
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                  child: wrapWithModel(
                    model: _model.uploadImageModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const UploadImageWidget(),
                  ),
                ),
                wrapWithModel(
                  model: _model.customButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomButtonWidget(
                    buttonLabel: 'Send',
                    routeTo: () async {},
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
