import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'label_and_content_model.dart';
export 'label_and_content_model.dart';

class LabelAndContentWidget extends StatefulWidget {
  const LabelAndContentWidget({
    super.key,
    String? label,
    String? content,
  })  : label = label ?? 'label',
        content = content ?? 'content';

  final String label;
  final String content;

  @override
  State<LabelAndContentWidget> createState() => _LabelAndContentWidgetState();
}

class _LabelAndContentWidgetState extends State<LabelAndContentWidget> {
  late LabelAndContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LabelAndContentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, -1.0),
              child: Text(
                widget.label,
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  widget.content,
                  maxLines: 3,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
