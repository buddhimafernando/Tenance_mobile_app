import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'category_tile_model.dart';
export 'category_tile_model.dart';

class CategoryTileWidget extends StatefulWidget {
  const CategoryTileWidget({
    super.key,
    String? label,
    this.limage,
    double? imageWidth,
    double? imageHeight,
  })  : label = label ?? 'label',
        imageWidth = imageWidth ?? 60.0,
        imageHeight = imageHeight ?? 60.0;

  final String label;
  final FFUploadedFile? limage;
  final double imageWidth;
  final double imageHeight;

  @override
  State<CategoryTileWidget> createState() => _CategoryTileWidgetState();
}

class _CategoryTileWidgetState extends State<CategoryTileWidget> {
  late CategoryTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/2vqf7_',
                  width: widget.imageWidth,
                  height: widget.imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            widget.label,
            style: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
