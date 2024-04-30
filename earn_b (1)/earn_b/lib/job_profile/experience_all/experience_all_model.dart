import '/flutter_flow/flutter_flow_util.dart';
import 'experience_all_widget.dart' show ExperienceAllWidget;
import 'package:flutter/material.dart';

class ExperienceAllModel extends FlutterFlowModel<ExperienceAllWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
