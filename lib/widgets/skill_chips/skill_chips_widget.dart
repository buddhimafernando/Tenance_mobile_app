import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'skill_chips_model.dart';
export 'skill_chips_model.dart';

class SkillChipsWidget extends StatefulWidget {
  const SkillChipsWidget({
    super.key,
    String? yearsOfExperience,
    this.icon,
    String? skill,
    this.chipColor,
    double? iconSize,
    Color? iconColor,
    double? width,
  })  : yearsOfExperience = yearsOfExperience ?? 'yearsOfExperience',
        skill = skill ?? 'skill',
        iconSize = iconSize ?? 16.0,
        iconColor = iconColor ?? Colors.white,
        width = width ?? 165.0;

  final String yearsOfExperience;
  final Widget? icon;
  final String skill;
  final Color? chipColor;
  final double iconSize;
  final Color iconColor;
  final double width;

  @override
  State<SkillChipsWidget> createState() => _SkillChipsWidgetState();
}

class _SkillChipsWidgetState extends State<SkillChipsWidget> {
  late SkillChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkillChipsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
      child: Container(
        width: widget.width,
        height: 60.0,
        decoration: BoxDecoration(
          color: widget.chipColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  widget.yearsOfExperience,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  widget.icon!,
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.skill,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
