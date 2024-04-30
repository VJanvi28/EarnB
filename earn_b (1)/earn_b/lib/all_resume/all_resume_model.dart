import '/flutter_flow/flutter_flow_util.dart';
import 'all_resume_widget.dart' show AllResumeWidget;
import 'package:flutter/material.dart';

class AllResumeModel extends FlutterFlowModel<AllResumeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
