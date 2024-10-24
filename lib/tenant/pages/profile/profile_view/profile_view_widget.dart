import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/label_and_content/label_and_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_view_model.dart';
export 'profile_view_model.dart';

class ProfileViewWidget extends StatefulWidget {
  const ProfileViewWidget({
    super.key,
    this.profileImage,
    String? email,
    String? userName,
    String? agreemantId,
    String? content,
  })  : email = email ?? 'email',
        userName = userName ?? 'userName',
        agreemantId = agreemantId ?? 'agreementId',
        content = content ?? 'content';

  final String? profileImage;
  final String email;
  final String userName;
  final String agreemantId;
  final String content;

  @override
  State<ProfileViewWidget> createState() => _ProfileViewWidgetState();
}

class _ProfileViewWidgetState extends State<ProfileViewWidget> {
  late ProfileViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: FindTenantDetailsCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final profileViewFindTenantDetailsResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ),
                title: Text(
                  'Profile',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                actions: const [],
                centerTitle: true,
                elevation: 0.0,
              ),
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
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            valueOrDefault<String>(
                              widget.profileImage,
                              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          FFAppState().userName,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFAppState().email,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).tertiary,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.agreementIdModel,
                        updateCallback: () => safeSetState(() {}),
                        child: LabelAndContentWidget(
                          label: 'Agreement id',
                          content: FFAppState().agreemantId,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.labelAndContentModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelAndContentWidget(
                        label: 'Tenant id',
                        content: FFAppState().tenantId,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.labelAndContentModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelAndContentWidget(
                        label: 'Mobile number',
                        content: FFAppState().mobileNumber,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.labelAndContentModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelAndContentWidget(
                        label: 'Email',
                        content: FFAppState().mobileNumber,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.labelAndContentModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelAndContentWidget(
                        label: 'Username',
                        content: FFAppState().userName,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.customButtonModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomButtonWidget(
                          buttonLabel: 'Edit',
                          buttonColor: FlutterFlowTheme.of(context).alternate,
                          borderColor: FlutterFlowTheme.of(context).secondary,
                          labelColor: FlutterFlowTheme.of(context).secondary,
                          routeTo: () async {
                            context.pushNamed('update_profile');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.customButtonModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomButtonWidget(
                          buttonLabel: 'Log out',
                          buttonColor: FlutterFlowTheme.of(context).primary,
                          labelColor: FlutterFlowTheme.of(context).alternate,
                          routeTo: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('sign_in', context.mounted);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
