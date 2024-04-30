import '/flutter_flow/flutter_flow_util.dart';
import 'candidate_widget.dart' show CandidateWidget;
import 'package:flutter/material.dart';

class CandidateModel extends FlutterFlowModel<CandidateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
