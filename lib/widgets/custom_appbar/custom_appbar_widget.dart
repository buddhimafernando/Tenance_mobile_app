import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_appbar_model.dart';
export 'custom_appbar_model.dart';

class CustomAppbarWidget extends StatefulWidget {
  const CustomAppbarWidget({
    super.key,
    String? title,
  }) : title = title ?? 'title';

  final String title;

  @override
  State<CustomAppbarWidget> createState() => _CustomAppbarWidgetState();
}

class _CustomAppbarWidgetState extends State<CustomAppbarWidget> {
  late CustomAppbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAppbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: FlutterFlowTheme.of(context).alternate,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
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
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Inter',
                letterSpacing: 0.0,
              ),
        ),
      ),
      actions: const [],
      centerTitle: false,
      elevation: 0.0,
    );
  }
}
