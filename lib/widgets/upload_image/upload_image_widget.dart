import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'upload_image_model.dart';
export 'upload_image_model.dart';

class UploadImageWidget extends StatefulWidget {
  const UploadImageWidget({super.key});

  @override
  State<UploadImageWidget> createState() => _UploadImageWidgetState();
}

class _UploadImageWidgetState extends State<UploadImageWidget> {
  late UploadImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          final selectedMedia = await selectMediaWithSourceBottomSheet(
            context: context,
            allowPhoto: true,
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            textColor: FlutterFlowTheme.of(context).primaryText,
            pickerFontFamily: 'Inter',
          );
          if (selectedMedia != null &&
              selectedMedia
                  .every((m) => validateFileFormat(m.storagePath, context))) {
            safeSetState(() => _model.isDataUploading = true);
            var selectedUploadedFiles = <FFUploadedFile>[];

            try {
              selectedUploadedFiles = selectedMedia
                  .map((m) => FFUploadedFile(
                        name: m.storagePath.split('/').last,
                        bytes: m.bytes,
                        height: m.dimensions?.height,
                        width: m.dimensions?.width,
                        blurHash: m.blurHash,
                      ))
                  .toList();
            } finally {
              _model.isDataUploading = false;
            }
            if (selectedUploadedFiles.length == selectedMedia.length) {
              safeSetState(() {
                _model.uploadedLocalFile = selectedUploadedFiles.first;
              });
            } else {
              safeSetState(() {});
              return;
            }
          }
        },
        child: Container(
          width: double.infinity,
          height: 160.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).tertiary,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Icon(
                  Icons.upload_file_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 60.0,
                ),
              ),
              Text(
                'Browse file',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
