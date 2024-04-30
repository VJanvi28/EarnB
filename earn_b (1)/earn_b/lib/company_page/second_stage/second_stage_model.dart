import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'second_stage_widget.dart' show SecondStageWidget;
import 'package:flutter/material.dart';

class SecondStageModel extends FlutterFlowModel<SecondStageWidget> {
  ///  Local state fields for this page.

  String? profile;

  String? resume;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AppliedJobRecord? candidate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
