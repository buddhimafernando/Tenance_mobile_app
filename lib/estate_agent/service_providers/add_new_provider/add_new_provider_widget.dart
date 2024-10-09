import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_dropdown/custom_dropdown_widget.dart';
import '/widgets/custom_textfield/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'add_new_provider_model.dart';
export 'add_new_provider_model.dart';

class AddNewProviderWidget extends StatefulWidget {
  const AddNewProviderWidget({super.key});

  @override
  State<AddNewProviderWidget> createState() => _AddNewProviderWidgetState();
}

class _AddNewProviderWidgetState extends State<AddNewProviderWidget> {
  late AddNewProviderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewProviderModel());
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
              child: Text(
                'Add new',
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
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.customTextfieldModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your agreement id',
                    label: 'Agreemant id',
                  ),
                ),
                wrapWithModel(
                  model: _model.customTextfieldModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your agreement id',
                    label: 'Serivice provider id',
                  ),
                ),
                wrapWithModel(
                  model: _model.customDropdownModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomDropdownWidget(
                    hintText: 'Select a service',
                    label: 'Provided services',
                  ),
                ),
                wrapWithModel(
                  model: _model.customTextfieldModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your mobile number',
                    label: 'Mobile number',
                  ),
                ),
                wrapWithModel(
                  model: _model.customTextfieldModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your email address',
                    label: 'Email',
                  ),
                ),
                wrapWithModel(
                  model: _model.customTextfieldModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomTextfieldWidget(
                    hintLabel: 'Enter your minimum wage',
                    label: 'Minimum wage',
                  ),
                ),
                wrapWithModel(
                  model: _model.customButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomButtonWidget(
                    buttonLabel: 'Add',
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
